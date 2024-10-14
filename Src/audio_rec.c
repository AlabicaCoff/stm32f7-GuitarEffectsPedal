#include "main.h"
#include <stdio.h>
#include "string.h"
#include <math.h>

typedef enum
{
  BUFFER_OFFSET_NONE = 0,
  BUFFER_OFFSET_HALF = 1,
  BUFFER_OFFSET_FULL = 2,
} BUFFER_StateTypeDef;

#define AUDIO_BLOCK_SIZE	((uint32_t) 0x3E80)		// 16,000 element
#define AUDIO_NB_BLOCKS		((uint32_t) 16)			// n block
#define OUTPUT_ADDR			(AUDIO_REC_START_ADDR + (AUDIO_NB_BLOCKS * AUDIO_BLOCK_SIZE * 2))

#define ROTARY_MODULATION_FREQ 5.0f

extern AUDIO_ErrorTypeDef AUDIO_Start(uint32_t audio_start_address, uint32_t audio_file_size);
extern EffectTypedef  effects[];

uint32_t audio_rec_buffer_state;
static uint16_t internal_buffer[AUDIO_BLOCK_SIZE]; 	// 16 bit * 16,000 element, per 1 block
int stop_record;
char str_buf[40];

void AudioRec_SetHint()
{
	BSP_LCD_Clear(LCD_COLOR_WHITE);

	BSP_LCD_SetTextColor(LCD_COLOR_BLUE);
	BSP_LCD_FillRect(0, 0, BSP_LCD_GetXSize(), 90);
	BSP_LCD_SetTextColor(LCD_COLOR_WHITE);
	BSP_LCD_SetBackColor(LCD_COLOR_BLUE);
	BSP_LCD_SetFont(&Font24);
	BSP_LCD_DisplayStringAt(0, 0, (uint8_t*) "AUDIO RECORD EXAMPLE", CENTER_MODE);
	BSP_LCD_SetFont(&Font12);
	BSP_LCD_DisplayStringAt(0, 30, (uint8_t*) "Press User button for next menu", CENTER_MODE);

	BSP_LCD_SetTextColor(LCD_COLOR_BLUE);
	BSP_LCD_DrawRect(10, 100, BSP_LCD_GetXSize() - 20, BSP_LCD_GetYSize() - 110);
	BSP_LCD_DrawRect(11, 101, BSP_LCD_GetXSize() - 22, BSP_LCD_GetYSize() - 112);
}

void AUDIO_Effect(uint32_t bytes_size)
{
	int16_t* original = (int16_t*) AUDIO_REC_START_ADDR;
	int16_t* output = (int16_t*) OUTPUT_ADDR;
	uint32_t lenght =  bytes_size / 2;

	memcpy(output, original, bytes_size);
	if (EffectIndex == 0)
	{
		ApplyDistortion(original, output, lenght, effects[EffectIndex].Parameter1, effects[EffectIndex].Parameter2); //Gmax2.4f, Gmin0.0f
	}
	else if (EffectIndex == 1)
	{
		ApplyFuzz(original, output, lenght, effects[EffectIndex].Parameter3, effects[EffectIndex].Parameter1, effects[EffectIndex].Parameter2);
	}
//	else if (EffectIndex == 2)
//	{
//		ApplyFlanger(original, output, lenght, effects[EffectIndex].Parameter1, effects[EffectIndex].Parameter2, effects[EffectIndex].Parameter3, effects[EffectIndex].Parameter4);
//	}
	else if (EffectIndex == 3)
	{
		ApplyRotaryEffect(original, output, lenght, effects[EffectIndex].Parameter1, effects[EffectIndex].Parameter2);
	}
//	else if (EffectIndex == 4)
//	{
//		ApplyReverb(original, output, lenght, effects[EffectIndex].Parameter1, effects[EffectIndex].Parameter2);
//	}
	else if (EffectIndex == 5)
	{
		ApplyDelay(original, output, lenght, effects[EffectIndex].Parameter1, effects[EffectIndex].Parameter3, effects[EffectIndex].Parameter2);
	}

}

void wait_buffer_offset(int state)
{
	while (audio_rec_buffer_state != state) {
		if (CheckForUserInput()) {
			stop_record = 1;
		}
	}
	audio_rec_buffer_state = BUFFER_OFFSET_NONE;
}

void AudioRec_demo()
{
	AudioRec_SetHint();

	// (16 bit * 16,000 element)   /   ( 16 bit * 16 kHz * 2 channel ) = 0.5 s
	// 0.5 s * 60 block = 30 s     ; if AUDIO_NB_BLOCKS = 60
	uint8_t init_status = BSP_AUDIO_IN_InitEx(
		INPUT_DEVICE_INPUT_LINE_1,      // INPUT_DEVICE_INPUT_LINE_1 INPUT_DEVICE_DIGITAL_MICROPHONE_2
		DEFAULT_AUDIO_IN_FREQ, 				    // sample rate  : 16 kHz
		DEFAULT_AUDIO_IN_BIT_RESOLUTION, 		// resolution   : 16 bit
		DEFAULT_AUDIO_IN_CHANNEL_NBR			// Stereo		: 2 channel
	);

	BSP_LCD_SetBackColor(LCD_COLOR_WHITE);

	if (init_status != AUDIO_OK) {
		BSP_LCD_SetTextColor(LCD_COLOR_RED);
		BSP_LCD_DisplayStringAt(0, BSP_LCD_GetYSize() - 95, (uint8_t*) "  AUDIO RECORD INIT FAIL", CENTER_MODE);
	}
	BSP_LCD_SetTextColor(LCD_COLOR_BLUE);
	BSP_LCD_DisplayStringAt(0, BSP_LCD_GetYSize() - 80, (uint8_t*) "       RECORDING...     ", CENTER_MODE);

	// internal_buffer -> AUDIO_REC_START_ADDR
	//
	// Block:                      |                     block_number: 0                     |                     block_number: 1                     |      ...
	//                             |                                                         |                                                         |
	// Interrupt:                  |                          HALF 1                       FULL 1                       HALF 2                       FULL 2   ...
	//                             +----------------------------+----------------------------+----------------------------+----------------------------+
	// Array  (16 bit):            |            internal_buffer[AUDIO_BLOCK_SIZE]            |            internal_buffer[AUDIO_BLOCK_SIZE]            |      ...
	//                             +----------------------------+----------------------------+----------------------------+----------------------------+
	// Size    (8 bit):            |      AUDIO_BLOCK_SIZE      |      AUDIO_BLOCK_SIZE      |      AUDIO_BLOCK_SIZE      |      AUDIO_BLOCK_SIZE      |      ...
	//                             +----------------------------+----------------------------+----------------------------+----------------------------+
	// Address (8 bit):   AUDIO_REC_START_ADDR         AUDIO_REC_START_ADDR         AUDIO_REC_START_ADDR         AUDIO_REC_START_ADDR         AUDIO_REC_START_ADDR
	//                                                 AUDIO_BLOCK_SIZE             1 * AUDIO_BLOCK_SIZE * 2     1 * AUDIO_BLOCK_SIZE * 2     2 * AUDIO_BLOCK_SIZE * 2
	//                                                                                                           AUDIO_BLOCK_SIZE
	uint32_t block_number = 0;
	audio_rec_buffer_state = BUFFER_OFFSET_NONE;

	BSP_AUDIO_IN_Record(internal_buffer, AUDIO_BLOCK_SIZE);

	for (stop_record = 0; !stop_record && block_number < AUDIO_NB_BLOCKS; block_number++) {
		uint32_t address = AUDIO_REC_START_ADDR + (block_number * AUDIO_BLOCK_SIZE * 2);

		wait_buffer_offset(BUFFER_OFFSET_HALF);
		memcpy(
			(uint32_t*) address,
			internal_buffer,
			AUDIO_BLOCK_SIZE
		);

		wait_buffer_offset(BUFFER_OFFSET_FULL);
		memcpy(
			(uint32_t*) (address + AUDIO_BLOCK_SIZE),		// next 16,000 bytes = 8,000 element (2 bytes)
			internal_buffer + (AUDIO_BLOCK_SIZE / 2),  		// half of 16,000 element = 8,000 element
			AUDIO_BLOCK_SIZE								// [AUDIO_BLOCK_SIZE] bytes = [AUDIO_BLOCK_SIZE / 2] element (2 bytes)
		);
	}

	BSP_AUDIO_IN_Stop(CODEC_PDWN_SW);

	sprintf(str_buf, "duration: %.1f s", block_number / 2.0);
	BSP_LCD_DisplayStringAt(0, BSP_LCD_GetYSize() - 40, (uint8_t*) str_buf, CENTER_MODE);
	BSP_LCD_DisplayStringAt(0, BSP_LCD_GetYSize() - 65, (uint8_t*) "RECORDING DONE, START PLAYBACK...", CENTER_MODE);

	BSP_AUDIO_OUT_Init(OUTPUT_DEVICE_HEADPHONE, 70, DEFAULT_AUDIO_IN_FREQ);
	BSP_AUDIO_OUT_SetAudioFrameSlot(CODEC_AUDIOFRAME_SLOT_02);

	uint32_t record_bytes = block_number * AUDIO_BLOCK_SIZE * 2;
	AUDIO_Effect(record_bytes);
	AUDIO_Start(OUTPUT_ADDR, record_bytes);

	while (1) {
		AUDIO_Process();
		// AUDIO_Effect();

		if (CheckForUserInput()) {
			BSP_AUDIO_OUT_Stop(CODEC_PDWN_SW);
			break;
		}
	}
}

void BSP_AUDIO_IN_TransferComplete_CallBack()
{
  audio_rec_buffer_state = BUFFER_OFFSET_FULL;
  return;
}


void BSP_AUDIO_IN_HalfTransfer_CallBack()
{
  audio_rec_buffer_state = BUFFER_OFFSET_HALF;
  return;
}


void BSP_AUDIO_IN_Error_CallBack()
{
  /* This function is called when an Interrupt due to transfer error on or peripheral error occurs. */
  BSP_LCD_SetBackColor(LCD_COLOR_RED);
  BSP_LCD_DisplayStringAt(0, LINE(14), (uint8_t *)"       DMA  ERROR     ", CENTER_MODE);

  /* Stop the program with an infinite loop */
  while (BSP_PB_GetState(BUTTON_KEY) != RESET) return;
}

/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2022 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "string.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void displayHEX(uint32_t value) {
	char b[100];
	float x = (value * 3.3) / 4095;
	sprintf(b, "0x%08X x = %.2f real value = %d\n\r", value, x, value);
	HAL_UART_Transmit(&huart3, (uint32_t*) b, strlen(b), 1000);
	HAL_Delay(400);
}

int average_8(int x) {
	static int samples[8];
	static int i = 0;
	static total = 0;

	total += x - samples[i];
	samples[i] = x;

	i = (i == 7 ? 0 : i + 1);
	return total >> 3;
}

int average_16(int x) {
	static int samples[16];
	static int i = 0;
	static total = 0;

	total += x - samples[i];
	samples[i] = x;

	i = (i == 15 ? 0 : i + 1);
	return total >> 4;
}
int LED4(int l1, int l2, int l3, int l4) {
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, l1);
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_6, l2);
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_5, l3);
	HAL_GPIO_WritePin(GPIOD, GPIO_PIN_4, l4);
}

volatile uint32_t adc_val = 0;
int adc_avg_8 = 0;
int adc_avg_16 = 0;
/* USER CODE END 0 */

/**
 * @brief  The application entry point.
 * @retval int
 */
int main(void) {
	/* USER CODE BEGIN 1 */

	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_ADC1_Init();
	MX_USART3_UART_Init();
	/* USER CODE BEGIN 2 */
//volatile uint32_t adc_val = 0;
	HAL_ADC_Start(&hadc1);
	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	while (1) {
		/* USER CODE END WHILE */

		/* USER CODE BEGIN 3 */
		while (HAL_ADC_PollForConversion(&hadc1, 100) != HAL_OK) {
		}
		adc_val = HAL_ADC_GetValue(&hadc1);
//	  uint32_t hex1 = 501;
		displayHEX(adc_val);
		adc_avg_8 = average_8(adc_val);
		adc_avg_16 = average_16(adc_val);
//	  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_7, RESET);
//	  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_6, RESET);
//	  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_5, RESET);
//	  HAL_GPIO_WritePin(GPIOD, GPIO_PIN_4, RESET);
		if (adc_val < 819) {
			LED4(1, 1, 1, 1);
		} else if (adc_val < 1638) {
			LED4(0, 1, 1, 1);
		} else if (adc_val < 2457) {
			LED4(0, 0, 1, 1);
		} else if (adc_val < 3276) {
			LED4(0, 0, 0, 1);
		} else if (adc_val < 4095) {
			LED4(0, 0, 0, 0);
		}
	}
	/* USER CODE END 3 */
}

/**
 * @brief System Clock Configuration
 * @retval None
 */
void SystemClock_Config(void) {
	RCC_OscInitTypeDef RCC_OscInitStruct = { 0 };
	RCC_ClkInitTypeDef RCC_ClkInitStruct = { 0 };

	/** Configure the main internal regulator output voltage
	 */
	__HAL_RCC_PWR_CLK_ENABLE();
	__HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE3);

	/** Initializes the RCC Oscillators according to the specified parameters
	 * in the RCC_OscInitTypeDef structure.
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
	RCC_OscInitStruct.HSIState = RCC_HSI_ON;
	RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
		Error_Handler();
	}

	/** Initializes the CPU, AHB and APB buses clocks
	 */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
			| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK) {
		Error_Handler();
	}
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void) {
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */
	__disable_irq();
	while (1) {
	}
	/* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

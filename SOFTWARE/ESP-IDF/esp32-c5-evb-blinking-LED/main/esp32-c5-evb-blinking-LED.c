/*
 * SPDX-FileCopyrightText: 2010-2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: CC0-1.0
 */

#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_chip_info.h"
#include "esp_flash.h"
#include "esp_system.h"
#include "esp_err.h"
#include <driver/gpio.h>

#define OLIMEX_LED_PIN 27

void app_main(void)
{
	esp_rom_gpio_pad_select_gpio(OLIMEX_LED_PIN);
	gpio_set_direction(OLIMEX_LED_PIN, GPIO_MODE_OUTPUT);
	gpio_set_level(OLIMEX_LED_PIN, 0);

	vTaskDelay(10 / portTICK_PERIOD_MS);

	// Flash led 3 times;
	for (int i=0;i<10;i++)
	{
		gpio_set_level(OLIMEX_LED_PIN, 1);
		vTaskDelay(50 / portTICK_PERIOD_MS);
		gpio_set_level(OLIMEX_LED_PIN, 0);
		vTaskDelay(50 / portTICK_PERIOD_MS);

	}

	while(true)
	{
		gpio_set_level(OLIMEX_LED_PIN, 1);
		vTaskDelay(1000 / portTICK_PERIOD_MS);
		gpio_set_level(OLIMEX_LED_PIN, 0);
		vTaskDelay(1000 / portTICK_PERIOD_MS);
	}

}

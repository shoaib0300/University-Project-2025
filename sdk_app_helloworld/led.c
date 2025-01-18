#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <bl_gpio.h>
#include "adc.h"  // Include header file for ADC and DHT11

// Define LED pins
#define LED_B_PIN 3
#define LED_BB_PIN 11

// Define outputs
#define LED_ON 1  // high voltage
#define LED_OFF 0 // low voltage

#define DISABLE_PULLUP 0
#define DISABLE_PULLDOWN 0


void task_led(void *pvParameters)
{
  // Define LEDs as outputs
  bl_gpio_enable_output(LED_B_PIN, DISABLE_PULLUP, DISABLE_PULLDOWN);
  bl_gpio_enable_output(LED_BB_PIN, DISABLE_PULLUP, DISABLE_PULLDOWN);

  uint8_t humidity = 0;
  uint8_t temperature = 0;
  printf("***************************************\r\n");
  printf("* The Current Room Conditions are:    *\r\n");
  printf("***************************************\r\n");

  // Task will perform reading of humidity and temperature every cycle
while (1) {
    if (read_humidity(&humidity) == 0 && read_temperature(&temperature) == 0) {
        printf("Humidity: %d, Temperature: %d\r\n", humidity, temperature);

        // Control LEDs based on humidity
        if (humidity >= 40 && humidity <= 60) {
          bl_gpio_output_set(LED_B_PIN, LED_ON);
          printf("Warning Humidity: %d\r\n", humidity);
        } 
        else {
          bl_gpio_output_set(LED_B_PIN, LED_OFF);
        }
        
        // Control temperature threshold
        if (temperature >= 16 && temperature <= 26) {
            bl_gpio_output_set(LED_BB_PIN, LED_OFF);
        } 
        else {
          bl_gpio_output_set(LED_BB_PIN, LED_ON);
          printf("Warning Temperature: %d\r\n", temperature);
        }
    } 
    else {
      printf("Failed to read DHT11 sensor data\n");
    }

    // Wait for 2 seconds before next iteration
    vTaskDelay(2000 / portTICK_PERIOD_MS);
  }

  // Cleanup
  vTaskDelete(NULL);
}

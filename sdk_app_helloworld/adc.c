#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>  // Include for rand() function

#include <bl602_adc.h>  // ADC driver
#include <bl_adc.h>      // ADC HAL
#include <bl_dma.h>      // DMA HAL

#include "adc.h"

// DHT11 Simulated Sensor Data
#define HARD_CODED_TEMPERATURE 26
#define HARD_CODED_HUMIDITY 38

// ADC task
void task_adc(void *pvParameters)
{
  printf("ADC task started\r\n");
  
  // Set GPIO pin for ADC
  init_adc(4);
  
  printf("ADC initialized\r\n");
  
  // Wait until initialization finished
  vTaskDelay(2000 / portTICK_PERIOD_MS);
  
  // Constantly print current ADC values
  while (1) {
    printf("\nCurrent value of digitized analog signal: %"PRIu32"\r\n", read_adc());
    convert_to_binary(read_adc());
    vTaskDelay(5000 / portTICK_PERIOD_MS);
  } 
  
  vTaskDelete(NULL);
}

// Read Humidity (using hardcoded value)
// Read Humidity (using hardcoded value)
uint8_t read_humidity(uint8_t *humidity) {
  // Simulate random fluctuation for humidity between -2 and +2
  int fluctuation = rand() % 5 - 2;  // Random value between -2 and 2
  *humidity = HARD_CODED_HUMIDITY + fluctuation;  // Add fluctuation to base value
  
  // Ensure humidity stays within 0-100 range
  if (*humidity > 100) *humidity = 100;
  
  return 0; // Success
}

// Read Temperature (using hardcoded value)
uint8_t read_temperature(uint8_t *temperature) {
  // Simulate random fluctuation for temperature between -1 and +1
  int fluctuation = rand() % 3 - 1;  // Random value between -1 and 1
  *temperature = HARD_CODED_TEMPERATURE + fluctuation;  // Add fluctuation to base value
  
  return 0; // Success
}

void convert_to_binary(uint32_t n) {
  int a[32], i;
  for(i = 0; n > 0; i++) {    
    a[i] = n % 2;    
    n = n / 2;    
  }    
  printf("\nBinary of Given Number is=");    
  for(i = i-1; i >= 0; i--) {    
    printf("%d", a[i]);    
  }  
  printf("\r\n");    
}

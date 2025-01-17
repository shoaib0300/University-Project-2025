// FreeRTOS
#include <FreeRTOS.h>
#include <task.h>

// Input/output
#include <stdio.h>

// GPIO library
#include <bl_gpio.h>


#include "adc.h"

// Define LED pins
#define LED_B_PIN 3
#define LED_BB_PIN 11

// define outputs
#define LED_ON 1 // high voltage
#define LED_OFF 0 // low voltage

// Pullup/pulldown resistors
#define ENABLE_PULLUP 1
#define DISABLE_PULLUP 0

#define ENABLE_PULLDOWN 1
#define DISABLE_PULLDOWN 0

//extern read_humidity();
//extern read_temperature()

/* LED task */
void task_led(void *pvParameters)
{
  printf("LED task started\r\n");
  
  // define LEDs as outputs
  bl_gpio_enable_output(LED_B_PIN, DISABLE_PULLUP, DISABLE_PULLDOWN);
  
  
  //task_adc_init();


  // wait for 100ms
  vTaskDelay(100 / portTICK_PERIOD_MS);
  
  // counter
  while (1) {
    printf("ADC task started\r\n");
    //uint8_t humidity = read_humidity()
    //uint8_t temparature = read_temperature();
    
    // if (humidity > 20){
    //   bl_gpio_output_set(LED_B_PIN, LED_ON);
    // } else {
    //   bl_gpio_output_set(LED_B_PIN, LED_OFF);
    // }
    
    bl_gpio_output_set(LED_B_PIN, LED_ON);
    bl_gpio_output_set(LED_BB_PIN, LED_ON);
    // wait for 1s
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    bl_gpio_output_set(LED_B_PIN, LED_OFF);
    bl_gpio_output_set(LED_BB_PIN, LED_OFF);

    vTaskDelay(1000 / portTICK_PERIOD_MS);

  }
  
  // should never happen but would delete the task and free allocated resources
  vTaskDelete(NULL);
}

void task_adc_init(void){
  printf("ADC task started\r\n");
  
  // Set GPIO pin for ADC. You can change this to any pin that supports ADC and has a sensor connected.
  init_adc(ADC_PIN);
  
  printf("ADC initialized\r\n");
  
}
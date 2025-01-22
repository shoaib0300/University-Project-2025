// Description:
// This program reads temperature and humidity data from a DHT sensor 
// and controls two LEDs based on the readings. It uses FreeRTOS for 
// task scheduling and UART for serial communication. The LEDs are 
// controlled as follows:
// - LED 1 (connected to pin 3) blinks when the temperature exceeds 
//   a predefined threshold (30°C).
// - LED 2 (connected to pin 11) blinks when the humidity falls below 
//   a predefined threshold (40%).
// The program runs in a continuous loop, reading data from the DHT sensor
// every 3 seconds and adjusting the LED states accordingly.

//The DHT11 sensor has a typical accuracy of ±5% RH (relative humidity).

// Key Concepts
//  Relative Humidity (RH):
//  It is expressed as a percentage (%).
//  RH = (Actual Water Vapor Density / Maximum Water Vapor Density) x 100%

// Saturation Point:
//  At 22°C, air can hold a maximum of approximately 19.8 g/m³ of water vapor. 
//  If the air contains 19.8 g/m³, the RH is 100%. If it contains half that amount (9.9 g/m³), the RH is 50%.

// FreeRTOS includes
#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <inttypes.h>
#include <bl_uart.h>
#include <bl_gpio.h>
#include <bl_timer.h>

#include "dht_lib.h"

void DHT_init(uint8_t pin);

// Define pins for the LEDs and DHT sensor
#define LED_11_PIN 3   // LED 1 pin
#define LED_14_PIN 11  // LED 2 pin
#define DHT_DATA_PIN 4 // DHT data pin

#define LED_ON 1  // high voltage
#define LED_OFF 0 // low voltage

#define DISABLE_PULLUP 0
#define DISABLE_PULLDOWN 0

#define TEMP_THRESHOLD 30  // Temperature threshold (in °C)
#define HUM_THRESHOLD 40   // Humidity threshold (in %)

// Define the DHT DataTypedef structure (assuming it's defined in "dht_lib.h")
DHT_DataTypedef DHT11_Data;
float Temperature, Humidity;
uint8_t good_rep;

void LED_Init(void)
{
    // Configure both LEDs as outputs, with no pull-up or pull-down resistors
    bl_gpio_enable_output(LED_11_PIN, DISABLE_PULLUP, DISABLE_PULLDOWN);
    bl_gpio_enable_output(LED_14_PIN, DISABLE_PULLUP, DISABLE_PULLDOWN);
}

// Function to control LED states
void LED_SetState(uint8_t pin, uint8_t state)
{
    bl_gpio_output_set(pin, state);
}

// Function to blink an LED
void LED_Blink(uint8_t pin, uint32_t delay_us)
{
    LED_SetState(pin, LED_ON);  // Turn on LED
    bl_timer_delay_us(delay_us); // Delay for specified time
    LED_SetState(pin, LED_OFF); // Turn off LED
    bl_timer_delay_us(delay_us); // Delay for specified time
}

int bfl_main(void)
{
    // Initialize UART
    bl_uart_init(0, 16, 7, 255, 255, 2 * 1000 * 1000);
    printf("***************************************\r\n");
    printf("* The Current Room Conditions are:    *\r\n");
    printf("***************************************\r\n");

    // Initialize DHT sensor
    DHT_init(DHT_DATA_PIN);
    LED_Init(); // Initialize LEDs

    while (1) {
        // Get DHT data (temperature and humidity)
        DHT_GetData(&DHT11_Data);
        good_rep = (DHT11_Data.Temperature != 0 && DHT11_Data.Humidity != 0) ? 1 : 0;
        
        if (good_rep) {
            // If data is successfully retrieved, store it
            Temperature = DHT11_Data.Temperature;
            Humidity = DHT11_Data.Humidity;
            printf("DHT Sensor Reading: Temperature = %.2f°C, Humidity = %.2f%%\r\n", Temperature, Humidity);
            // fflush(stdout); // Ensure the output is flushed to the terminal immediately
        } else {
            printf("Failed to read from DHT sensor.\n");
        }

        if (Temperature > TEMP_THRESHOLD) {
            LED_Blink(LED_11_PIN, 500000); // Blink every 500ms (500,000 microseconds)
            printf("Temperature exceeds threshold!\n");
        } else {
            LED_SetState(LED_11_PIN, LED_OFF);
        }

        if (Humidity < HUM_THRESHOLD) {
            LED_Blink(LED_14_PIN, 500000); // Blink every 500ms (500,000 microseconds)
            // printf("Humidity falls below threshold!\n");
        } else {
            LED_SetState(LED_14_PIN, LED_OFF);
        }

        bl_timer_delay_us(3000000);  // 3 seconds delay in microseconds
    }

    return 0;
}

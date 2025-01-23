#include <FreeRTOS.h> // FreeRTOS library needed for task management
#include <stdio.h>   // Standard I/O library for printf
#include <inttypes.h> // Integer types for data types
#include <task.h>   // Task management library
#include "bl_uart.h" // UART library for serial communication
#include "bl_gpio.h" // GPIO library for pin configuration
#include "bl_timer.h" // Timer library for delay functions
#include "dht_lib.h" // DHT sensor library
#include "dht_lib.c" // DHT sensor library implementation


// Pin definitions
#define LED_TEMP_PIN 3       // LED for temperature threshold
#define LED_HUM_PIN 11       // LED for humidity threshold
#define DHT_DATA_PIN 4       // DHT sensor data pin
#define SOUND_SENSOR_PIN 12  // KY-037 sound sensor pin
#define LED_CLAP_PIN 14      // LED for clap detection

// Thresholds
#define TEMP_THRESHOLD 25    // Temperature threshold (in °C)
#define HUM_THRESHOLD 20     // Humidity threshold (in %)

// Global variables
DHT_DataTypedef DHT11_Data;
float Temperature, Humidity;
uint8_t led_clap_state = 0; // LED state for clap detection

// Function to initialize GPIO pins
void GPIO_Init(void) {
    bl_gpio_enable_output(LED_TEMP_PIN, 0, 0);  // LED for temperature
    bl_gpio_enable_output(LED_HUM_PIN, 0, 0);   // LED for humidity
    bl_gpio_enable_output(LED_CLAP_PIN, 0, 0);  // LED for clap detection
    bl_gpio_enable_input(SOUND_SENSOR_PIN, 0, 0); // Sound sensor
}

// Function to set LED state
void LED_SetState(uint8_t pin, uint8_t state) {
    bl_gpio_output_set(pin, state);
}

// Function to blink LED
void LED_Blink(uint8_t pin, uint32_t delay_us) {
    LED_SetState(pin, 1);  // Turn on
    bl_timer_delay_us(delay_us);
    LED_SetState(pin, 0);  // Turn off
    bl_timer_delay_us(delay_us);
}

// Function to detect a clap
int Clap_Detected(void) {
    static int prev_state = 0;
    int curr_state = bl_gpio_input_get_value(SOUND_SENSOR_PIN);

    if (prev_state == 0 && curr_state == 1) {
        prev_state = curr_state;
        return 1;  // Clap detected
    }
    prev_state = curr_state;
    return 0;
}

// Task to handle temperature and humidity sensing
void Task_TempHumidity(void) {
    printf("***************************************\r\n");
    printf("* The Current Room Conditions are:    *\r\n");
    printf("***************************************\r\n");
    for (int i = 0; i < 5; i++) {
        DHT_GetData(&DHT11_Data);
        if (DHT11_Data.Temperature && DHT11_Data.Humidity) {
            Temperature = DHT11_Data.Temperature;
            Humidity = DHT11_Data.Humidity;
            printf("Temperature: %.2f°C, Humidity: %.2f%%\r\n", Temperature, Humidity);

            if (Temperature > TEMP_THRESHOLD || Temperature < 20) {
                LED_Blink(LED_TEMP_PIN, 500000); // Blink if temperature exceeds threshold or is less than 20
            } else {
                LED_SetState(LED_TEMP_PIN, 0); // Turn off LED
            }

            if (Humidity < HUM_THRESHOLD || Humidity > 40) {
                LED_Blink(LED_HUM_PIN, 500000); 

            } else {
                LED_SetState(LED_HUM_PIN, 0); // Turn off LED

            }
        } else {
            printf("Failed to read DHT sensor.\n");
        }
        bl_timer_delay_us(3000000); // 3 seconds delay
    }
}

// Task to handle clap detection
void Task_ClapDetection(void) {
    printf("Starting Clap Detection Task...\r\n");
    for (int i = 0; i < 10; i++) { // Run for 10 iterations
        if (Clap_Detected()) {
            // Toggle LED state on clap
            led_clap_state = !led_clap_state;
            LED_SetState(LED_CLAP_PIN, led_clap_state);
            printf("Clap detected! LED toggled.\r\n");
        }
        bl_timer_delay_us(200000); // 200ms delay
    }
}

int bfl_main(void) {
    // Initialize UART and GPIO
    bl_uart_init(0, 16, 7, 255, 255, 2 * 1000 * 1000);
    printf("Combined Program Starting...\r\n");
    GPIO_Init();
    DHT_init(DHT_DATA_PIN);

    // Main loop alternating tasks
    while (1) {
        Task_TempHumidity();   // Run temperature and humidity task
        Task_ClapDetection();  // Run clap detection task
    }

    return 0;
}

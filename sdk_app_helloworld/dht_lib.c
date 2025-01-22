/* Include necessary headers */
#include <stdio.h>
#include <inttypes.h>
#include <bl_gpio.h>
#include <bl_timer.h>  // Include bl_timer.h for microsecond delay

#include  "dht_lib.h"

// Declare global pin variable
uint8_t pinDht;

/* Initialize DHT sensor by setting the GPIO pin */
void DHT_init(uint8_t pinDataDHT)
{
    pinDht = pinDataDHT;
}

/* Start communication with the DHT sensor */
void DHT_Start(void)
{
    // Set the pin as output, and configure it with no pull-up or pull-down resistors
    bl_gpio_enable_output(pinDht, 0, 0);
    
    // Pull the pin low for at least 18ms (for DHT to start)
    bl_gpio_output_set(pinDht, 0);  // Set the pin LOW
    bl_timer_delay_us(18000);  // Wait for 18ms
    
    // Pull the pin high for at least 20-40us (for DHT to respond)
    bl_gpio_output_set(pinDht, 1);  // Set the pin HIGH
    bl_timer_delay_us(30);  // Wait for 30us
    
    // Set the pin as input (DHT will pull it low to indicate response)
    bl_gpio_enable_input(pinDht, 0, 0);  // Use no pull-up, no pull-down resistors
}

/* Check if the DHT sensor responds */
uint8_t DHT_Check_Response(void)
{
    uint8_t Response = 0;
    
    // Wait for 40us to check for DHT response
    bl_timer_delay_us(40);
    
    // Read the pin value (sensor should pull it LOW)
    if (!bl_gpio_input_get_value(pinDht))
    {
        // Wait for 80us
        bl_timer_delay_us(80);
        
        // Check if the sensor responds with HIGH
        if (bl_gpio_input_get_value(pinDht)) 
            Response = 1;
        else 
            Response = -1;  // No response
    }
    
    // Wait until the pin goes LOW
    while (bl_gpio_input_get_value(pinDht)); 
    
    return Response;
}

/* Read a byte of data from the DHT sensor */
uint8_t DHT_Read(void)
{
    uint8_t i = 0, j;
    
    // Read 8 bits of data from the sensor
    for (j = 0; j < 8; j++)
    {
        // Wait for the pin to go HIGH
        while (!(bl_gpio_input_get_value(pinDht)));  
        
        // Wait for 40us
        bl_timer_delay_us(40);
        
        // If the pin is LOW, it means the bit is 0
        if (!(bl_gpio_input_get_value(pinDht)))   
        {
            i &= ~(1 << (7 - j));  // Clear the corresponding bit
        }
        else
        {
            i |= (1 << (7 - j));  // Set the corresponding bit
        }
        
        // Wait for the pin to go LOW
        while ((bl_gpio_input_get_value(pinDht)));  
    }
    return i;
}

/* Get the temperature and humidity data from the DHT sensor */
#include <stdlib.h> // Required for rand()

void DHT_GetData(DHT_DataTypedef *DHT_Data)
{
    uint8_t Rh_byte1, Rh_byte2, Temp_byte1, Temp_byte2, SUM;

    DHT_Start();  // Start communication
    
    // Check for sensor response
    DHT_Check_Response();
    
    // Read the sensor data (humidity and temperature)
    Rh_byte1 = DHT_Read();
    Rh_byte2 = DHT_Read();
    Temp_byte1 = DHT_Read();
    Temp_byte2 = DHT_Read();
    SUM = DHT_Read();
    
    // Verify the checksum
    uint8_t is_good = (SUM == (Rh_byte1 + Rh_byte2 + Temp_byte1 + Temp_byte2));
    
    if (is_good)
    {
        // Populate the DHT data structure with the temperature and humidity
        DHT_Data->Temperature = Temp_byte1;
        DHT_Data->Humidity = Rh_byte1;

        float random_offset_temp = ((rand() % 21) - 10) / 20.0f;
        float random_offset_hum = ((rand() % 21) - 10) / 20.0f; 
        
        
        DHT_Data->Temperature += random_offset_temp;
        DHT_Data->Humidity += random_offset_hum;
    }
}

// FreeRTOS
#include <FreeRTOS.h>
#include <task.h>

// Input/output
#include <stdio.h>
#include <inttypes.h>

#include <bl602_adc.h>  //  ADC driver
#include <bl_adc.h>     //  ADC HAL
#include <bl_dma.h>     //  DMA HAL

#include "adc.h"

/* ADC task */
void task_adc(void *pvParameters)
{
  printf("ADC task started\r\n");
  
  // Set GPIO pin for ADC. You can change this to any pin that supports ADC and has a sensor connected.
  init_adc(4);
  
  printf("ADC initialized\r\n");
  
  // wait until initialization finished
  vTaskDelay(2000 / portTICK_PERIOD_MS);
  
  // constantly print current ADC values
  while (1) {
    printf("\nCurrent value of digitized analog signal: %"PRIu32"\r\n", read_adc());
    convert_to_binary(read_adc());
    vTaskDelay(5000 / portTICK_PERIOD_MS);
  } 
  
  // should never happen but would delete the task and free allocated resources
  vTaskDelete(NULL);
}

static int set_adc_gain(uint32_t gain1, uint32_t gain2) {
  // read configuration hardware register
  uint32_t reg = BL_RD_REG(AON_BASE, AON_GPADC_REG_CONFIG2);
  
  // set ADC gain bits
  reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_PGA1_GAIN, gain1);
  reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_PGA2_GAIN, gain2);
  
  // set chop mode
  if (gain1 != ADC_PGA_GAIN_NONE || gain2 != ADC_PGA_GAIN_NONE) {
    reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_CHOP_MODE, 2);
  } else {
    reg = BL_SET_REG_BITS_VAL(reg, AON_GPADC_CHOP_MODE, 1);
  }
  
  // enable ADC amplifier
  reg = BL_CLR_REG_BIT(reg, AON_GPADC_PGA_VCMI_EN);
  if (gain1 != ADC_PGA_GAIN_NONE || gain2 != ADC_PGA_GAIN_NONE) {
    reg = BL_SET_REG_BIT(reg, AON_GPADC_PGA_EN);
  } else {
    reg = BL_CLR_REG_BIT(reg, AON_GPADC_PGA_EN);
  }
  
  // update ADC configuration hardware register
  BL_WR_REG(AON_BASE, AON_GPADC_REG_CONFIG2, reg);
  return 0;
}


// NOTE: pin must be of the following 4, 5, 6, 9, 10, 11, 12, 13, 14, 15
// Otherwise you may damage your device!
void init_adc(uint8_t pin) {
  // Ensure valid pin was selected
  switch (pin) {
    case 4:
    case 5:
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
      break;
    default:
      printf("Invalid pin selected for ADC\r\n");
      return;
  }
  
  // set frequency and single channel conversion mode
  bl_adc_freq_init(SINGLE_CHANNEL_CONVERSION_MODE, ADC_FREQUENCY);
  
  // initialize GPIO pin for single channel conversion mode
  bl_adc_init(SINGLE_CHANNEL_CONVERSION_MODE, pin);
  
  // enable ADC gain
  set_adc_gain(ADC_GAIN1, ADC_GAIN2);

  // initialize DMA for the ADC channel and for single channel conversion mode
  bl_adc_dma_init(SINGLE_CHANNEL_CONVERSION_MODE, NUMBER_OF_SAMPLES);

  // configure GPIO pin as ADC input
  bl_adc_gpio_init(pin);

  // mark pin and ADC as configured
  int channel = bl_adc_get_channel_by_gpio(pin);
  adc_ctx_t *ctx = bl_dma_find_ctx_by_channel(ADC_DMA_CHANNEL);
  ctx -> chan_init_table |= (1 << channel);

  // start reading process
  bl_adc_start();
}

uint32_t read_adc() {
  // array storing samples statically
  static uint32_t adc_data[NUMBER_OF_SAMPLES];
  
  // get DMA context for ADC channel to read data
  adc_ctx_t *ctx = bl_dma_find_ctx_by_channel(ADC_DMA_CHANNEL);
  
  // return if sampling failed or did not finish
  if (ctx -> channel_data == NULL) {
    return 0;
  }
  
  // copy read samples from memory written dynamically by DMA to static array
  memcpy(
    (uint8_t*) adc_data,
    (uint8_t*) (ctx -> channel_data),
    sizeof(adc_data)
  );
  
  // calculate mean value
  uint32_t sum = 0;
  for (int i = 0; i < NUMBER_OF_SAMPLES; i++) {
    // scale up sample
    uint32_t scaled = ((adc_data[i] & 0xFFFF) * 32000) >> 16;
    sum += scaled;
  }
  
  return sum/NUMBER_OF_SAMPLES;
}

void convert_to_binary(uint32_t n){
  int a[32], i;

  for(i=0;n>0;i++){    
    a[i]=n%2;    
    n=n/2;    
  }    
  printf("\nBinary of Given Number is=");    
  for( i=i-1;i>=0;i--)    
  {    
    printf("%d",a[i]);    
  }  
  printf("\r\n");    
  return;
}


uint8_t read_temperature(uint32_t dht22_data, uint8_t *tempe){
  uint8_t _default = 23;
  int error[] = {-3,-2,-1,0,1,2}; 

  for (int i = 0; i < sizeof(tempe); ++i){
    printf("%"PRIu8,tempe[i]);
  }
  printf("\r\n");


  int res = 0;
  for (int i = 0; i < 8; ++i)
  {
    res *= 2;
    res +=tempe[i];
  }
  printf("%d\r\n",res);

  // Random Value Function
  return _default+error[0];
  //return res/10;
}


uint8_t read_humidity(uint32_t dht22_data, uint8_t *hr){
  uint8_t _default = 38;
  for (int i = 0; i < sizeof(hr); ++i){
    printf("%"PRIu8,hr[i]);
  }
  printf("\r\n");

  int res = 0;
  for (int i = 0; i < 8; ++i){
    res *= 2;
    res +=hr[i];
  }
  printf("%d\r\n",res);

  return _default;
  //return res;
}
#ifndef __DHT_LIB__H__
#define __DHT_LIB__H__
/* DHT Lib use for BL602 Project */

typedef struct
{
	float Temperature;
	float Humidity;
}DHT_DataTypedef;



void DHT_GetData (DHT_DataTypedef *DHT_Data);




#endif  //!__DHT_LIB__H__
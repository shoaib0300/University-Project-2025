#ifndef ROOM_DATA_H
#define ROOM_DATA_H

extern int room_id;
extern char *room_name;  // Change to char* to allow dynamic allocation
extern char *room_floor; // Change to char* to allow dynamic allocation
extern char *room_building; // Change to char* to allow dynamic allocation
extern double room_temperature;
extern int room_humidity;
extern int room_lightOn;
extern int room_fanOn;
extern int room_active;
extern char *room_temperatureUnit; // Change to char* to allow dynamic allocation
extern int room_minTemp;
extern int room_maxTemp;
extern int room_minHum;
extern int room_maxHum;

void load_room_data(const char *file_path);

#endif // ROOM_DATA_H
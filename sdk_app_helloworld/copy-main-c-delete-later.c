
// main.c
#include <stdio.h>
#include "room_data.h"

int main() {
    load_room_data("../web/public/rooms_data.json");

    // Print the extracted values
    printf("First Room Details:\n");
    printf("ID: %d\n", room_id);
    printf("Name: %s\n", room_name);
    printf("Floor: %s\n", room_floor);
    printf("Building: %s\n", room_building);
    printf("Temperature: %.1f\n", room_temperature);
    printf("Humidity: %d\n", room_humidity);
    printf("Light On: %s\n", room_lightOn ? "true" : "false");
    printf("Fan On: %s\n", room_fanOn ? "true" : "false");
    printf("Active: %s\n", room_active ? "true" : "false");
    printf("Temperature Unit: %s\n", room_temperatureUnit);
    printf("Min Temperature: %d\n", room_minTemp);
    printf("Max Temperature: %d\n", room_maxTemp);
    printf("Min Humidity: %d\n", room_minHum);
    printf("Max Humidity: %d\n", room_maxHum);

    return 0;
}
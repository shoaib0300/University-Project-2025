#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"
#include "room_data.h"

// Define the variables
int room_id;
char *room_name;  // Change to char* to allow dynamic allocation
char *room_floor; // Change to char* to allow dynamic allocation
char *room_building; // Change to char* to allow dynamic allocation
double room_temperature;
int room_humidity;
int room_lightOn;
int room_fanOn;
int room_active;
char *room_temperatureUnit; // Change to char* to allow dynamic allocation
int room_minTemp;
int room_maxTemp;
int room_minHum;
int room_maxHum;

void load_room_data(const char *file_path) {
    FILE *file = fopen(file_path, "r");
    if (file == NULL) {
        printf("Error: Unable to open file.\n");
        return;
    }

    // Get file size
    fseek(file, 0, SEEK_END);
    long fileSize = ftell(file);
    rewind(file);

    // Allocate memory for the file content
    char *buffer = (char *)malloc(fileSize + 1);
    if (buffer == NULL) {
        printf("Memory allocation failed.\n");
        fclose(file);
        return;
    }

    // Read the file into the buffer
    size_t bytesRead = fread(buffer, 1, fileSize, file);
    if (bytesRead != fileSize) {
        printf("Error: Unable to read the entire file.\n");
        free(buffer);
        fclose(file);
        return;
    }
    buffer[fileSize] = '\0'; // Null-terminate the string

    // Parse the JSON data
    cJSON *json = cJSON_Parse(buffer);
    if (json == NULL) {
        printf("Error: Unable to parse JSON.\n");
        free(buffer);
        fclose(file);
        return;
    }

    // Extract the "rooms" array
    cJSON *rooms = cJSON_GetObjectItem(json, "rooms");
    if (rooms == NULL || !cJSON_IsArray(rooms)) {
        printf("Error: No rooms found in JSON.\n");
        cJSON_Delete(json);
        free(buffer);
        fclose(file);
        return;
    }

    // Get the first room
    cJSON *firstRoom = cJSON_GetArrayItem(rooms, 0);
    if (firstRoom == NULL) {
        printf("Error: No first room found.\n");
        cJSON_Delete(json);
        free(buffer);
        fclose(file);
        return;
    }

    // Store values into variables
    room_id = cJSON_GetObjectItem(firstRoom, "id")->valueint;

    // Allocate memory and copy strings
    room_name = strdup(cJSON_GetObjectItem(firstRoom, "name")->valuestring);
    room_floor = strdup(cJSON_GetObjectItem(firstRoom, "floor")->valuestring);
    room_building = strdup(cJSON_GetObjectItem(firstRoom, "building")->valuestring);
    room_temperature = cJSON_GetObjectItem(firstRoom, "temperature")->valuedouble;
    room_humidity = cJSON_GetObjectItem(firstRoom, "humidity")->valueint;
    room_lightOn = cJSON_GetObjectItem(firstRoom, "lightOn")->valueint;
room_fanOn = cJSON_GetObjectItem(firstRoom, "fanOn")->valueint;
    room_active = cJSON_GetObjectItem(firstRoom, "active")->valueint;
    room_temperatureUnit = strdup(cJSON_GetObjectItem(firstRoom, "temperatureUnit")->valuestring);
    room_minTemp = cJSON_GetObjectItem(firstRoom, "minTemp")->valueint;
    room_maxTemp = cJSON_GetObjectItem(firstRoom, "maxTemp")->valueint;
    room_minHum = cJSON_GetObjectItem(firstRoom, "minHum")->valueint;
    room_maxHum = cJSON_GetObjectItem(firstRoom, "maxHum")->valueint;

    // Clean up
    cJSON_Delete(json);
    free(buffer);
    fclose(file);
}
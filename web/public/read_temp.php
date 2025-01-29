<?php
$filePath = "/home/shoaib/bl_iot_sdk/customer_app/sdk_app_helloworld/sdk_app_helloworld/temp.txt";

$myfile = fopen($filePath, "r") or die("Unable to open file!");
$fileContent = fread($myfile, filesize($filePath));
fclose($myfile);

preg_match("/temperature:\s*([\d\.]+)\s*C/", $fileContent, $temperatureMatch);
preg_match("/Humidity:\s*(\d+)%/", $fileContent, $humidityMatch);

if ($temperatureMatch && $humidityMatch) {
    $temperature = $temperatureMatch[1];  // temperature in C
    $humidity = $humidityMatch[1];        // humidity in percentage
    echo "Temperature: $temperature°C<br>";
    echo "Humidity: $humidity%";
} else {
    echo "Could not extract temperature and humidity from the file.";
}
?>

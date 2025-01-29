<?php
// Path to JSON file
$filePath = 'rooms_data.json';

// Get raw POST data
$jsonData = file_get_contents('php://input');

// Log the incoming data for debugging
error_log("Received data: " . $jsonData);  // This will log to the PHP error log

// Decode JSON
$data = json_decode($jsonData, true);

// Check if data contains 'rooms'
if (isset($data['rooms'])) {
    // Add the timestamp to the data
    $timestamp = date('Y-m-d H:i:s');
    $data['timestamp'] = $timestamp;

    // Save to file (overwrite with latest data including timestamp)
    file_put_contents($filePath, json_encode($data, JSON_PRETTY_PRINT));

    // Respond with success
    echo json_encode([
        "status" => "success",
        "message" => "Data saved",
        "timestamp" => $timestamp,
        "data" => $data
    ]);
} else {
    // Handle error
    echo json_encode([
        "status" => "error",
        "message" => "No rooms data received"
    ]);
}
?>

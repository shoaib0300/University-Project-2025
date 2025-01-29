const rooms = [];

let nextRoomId = 4; // To ensure unique IDs for new rooms

function generateUniqueId() {
    let id = nextRoomId;
    while (rooms.some(room => room.id === id)) {
        id++;
    }
    nextRoomId = id + 1;
    return id;
}

function toggleTemperatureUnit(roomId) {
    const room = rooms.find(r => r.id === roomId);
    if (room) {
        room.temperatureUnit = room.temperatureUnit === 'C' ? 'F' : 'C';
        updateRooms();
    }
}

function convertTemperature(temp, unit) {
    return unit === 'F' ? (temp * 9/5 + 32).toFixed(1) : temp.toFixed(1);
}

const container = document.getElementById('rooms-container');

function toggleRoomActivity(roomId) {
    const room = rooms.find(r => r.id === roomId);
    if (room) {
        room.active = !room.active;

        if (!room.active) {
            room.lightOn = false;
            room.fanOn = false;
        }

        updateRooms();
        saveRooms();
    }
}

function deleteRoom(roomId) {
    const index = rooms.findIndex(r => r.id === roomId);
    if (index !== -1) {
        rooms.splice(index, 1);
        updateRooms();
        saveRooms(); // Save the updated room list after deletion
    }
}

function createNewRoom() {
    showCreateRoomPopup();
}

function showCreateRoomPopup() {
    const popup = document.createElement('div');
    popup.classList.add('popup');
    popup.innerHTML = `
        <div class="popup-content">
            <h2>Create New Room</h2>
            <form id="new-room-form">
                <div class="form-group">
                    <label for="room-name">Room Name:</label>
                    <input type="text" id="room-name" required>
                </div>
                <div class="form-group">
                    <label for="room-floor">Floor:</label>
                    <input type="number" id="room-floor" min="1" required>
                </div>
                <div class="form-group">
                    <label for="building-name">Building:</label>
                    <input type="text" id="building-name" required>
                </div>
                <div class="form-group">
                    <label for="min-temp">Min Temperature:</label>
                    <input type="number" id="min-temp" value="15" required>
                </div>
                <div class="form-group">
                    <label for="max-temp">Max Temperature:</label>
                    <input type="number" id="max-temp" value="25" required>
                </div>
                <div class="form-group">
                    <label for="min-hum">Min Humidity:</label>
                    <input type="number" id="min-hum" value="30" required>
                </div>
                <div class="form-group">
                    <label for="max-hum">Max Humidity:</label>
                    <input type="number" id="max-hum" value="60" required>
                </div>
                <div class="form-actions">
                    <button type="submit">Add New Room Data</button>
                    <button type="button" class="cancel-button">Cancel</button>
                </div>
            </form>
        </div>
    `;

    document.body.appendChild(popup);

    const form = popup.querySelector('#new-room-form');
    const cancelButton = popup.querySelector('.cancel-button');

    form.addEventListener('submit', (e) => {
        e.preventDefault();
        const roomName = document.getElementById('room-name').value;
        const roomFloor = document.getElementById('room-floor').value;
        const buildingName = document.getElementById('building-name').value;
        const minTemp = document.getElementById('min-temp').value;
        const maxTemp = document.getElementById('max-temp').value;
        const minHum = document.getElementById('min-hum').value;
        const maxHum = document.getElementById('max-hum').value;

        const newRoom = {
            id: generateUniqueId(),
            name: roomName,
            floor: roomFloor,
            building: buildingName,
            temperature: 20.0,
            humidity: 50,
            lightOn: false,
            fanOn: false,
            active: true,
            temperatureUnit: 'C',
            minTemp: parseFloat(minTemp),
            maxTemp: parseFloat(maxTemp),
            minHum: parseFloat(minHum),
            maxHum: parseFloat(maxHum),
        };
        rooms.push(newRoom);
        updateRooms();
        saveRooms();
        document.body.removeChild(popup);
    });

    cancelButton.addEventListener('click', () => {
        document.body.removeChild(popup);
    });
}

function updateRooms() {
    container.innerHTML = '';

    // Add "Create New Room" button
    const createRoomButton = document.createElement('div');
    createRoomButton.classList.add('room', 'create-room');
    createRoomButton.innerHTML = `
        <h2>Add New Room</h2>
        <button onclick="createNewRoom()">+ Create Room</button>
    `;
    container.appendChild(createRoomButton);

    rooms.forEach(room => {
        if (room.active) {
            const tempChange = (Math.random() * 2 - 1).toFixed(1); 
            const humChange = Math.floor(Math.random() * 3) - 1;   
            // change the values here for hardcore
            room.temperature = parseFloat((20.0 + parseFloat(tempChange)).toFixed(1)); 
            room.humidity = 50 + humChange;

            // Fan control based on temperature
            if (room.temperature < room.minTemp) {
                room.fanOn = true;
                room.fanText = 'Heater On';
            } else if (room.temperature > room.maxTemp) {
                room.fanOn = true;
                room.fanText = 'AC Fan On';
            } else {
                room.fanOn = false;
                room.fanText = 'Fan Off';
            }

            // Fan control based on humidity
            if (room.humidity < room.minHum || room.humidity > room.maxHum) {
                room.humidityFanOn = true;
                room.humidityFanText = 'Humidity Fan On';
            } else {
                room.humidityFanOn = false;
                room.humidityFanText = 'Humidity Fan Off';
            }

            // If any fan is on, the light should be turned on
            if (room.fanOn || room.humidityFanOn) {
                room.lightOn = true;
            } else {
                room.lightOn = false;
            }
        }
        const isDangerous = room.temperature > 30 || room.temperature < 10 || room.humidity > 80 || room.humidity < 20;

        const roomDiv = document.createElement('div');
        roomDiv.classList.add('room');

        if (isDangerous) {
            roomDiv.classList.add('danger');
        }

        const convertedTemp = convertTemperature(room.temperature, room.temperatureUnit);

        roomDiv.innerHTML = `
            <div class="room-header">
                <div class="titles">
                    <h2>${room.name} | ${room.floor}</h2>
                    <h4><br>${room.building}</h4>
                </div>   
                <button class="edit-button" onclick="editRoom(${room.id})">Edit</button>
                <button class="delete-button" onclick="deleteRoom(${room.id})">Delete</button>
            </div>
            <div class="temperature-container">
                <p class="temperature">Temperature: ${convertedTemp}°${room.temperatureUnit}</p>
                <label class="switch">
                    <input type="checkbox" 
                           ${room.temperatureUnit === 'F' ? 'checked' : ''} 
                           onchange="toggleTemperatureUnit(${room.id})">
                    <span class="slider">
                        <span class="celsius">C</span>
                        <span class="fahrenheit">F</span>
                    </span>
                </label>
            </div>
            <p class="humidity">Humidity: ${room.humidity}%</p>
            <p>Fan (Temperature): <span class="status ${room.fanOn ? 'on' : 'off'}">${room.fanText}</span></p>
            <p>Fan (Humidity): <span class="status ${room.humidityFanOn ? 'on' : 'off'}">${room.humidityFanText}</span></p>
            <p>Light: <span class="status ${room.lightOn ? 'on' : 'off'}">${room.lightOn ? 'ON' : 'OFF'}</span></p>
            <button class="enable-button" onclick="toggleRoomActivity(${room.id})">${room.active ? 'Disable' : 'Enable'} Room</button>
        `;

        container.appendChild(roomDiv);
    });
}
function editRoom(roomId) {
    const room = rooms.find(r => r.id === roomId);
    if (room) {
        const popup = document.createElement('div');
        popup.classList.add('popup');
        popup.innerHTML = `
            <div class="popup-content">
                <h2>Edit Room</h2>
                <form id="edit-room-form">
                    <div class="form-group">
                        <label for="edit-room-name">Room Name:</label>
                        <input type="text" id="edit-room-name" value="${room.name}" required>
                    </div>
                    <div class="form-group">
                        <label for="edit-room-temperature">Temperature:</label>
                        <input type="number" id="edit-room-temperature" value="${room.temperature}" required>
                    </div>
                    <div class="form-group">
                        <label for="edit-min-temp">Min Temperature:</label>
                        <input type="number" id="edit-min-temp" value="${room.minTemp}" required>
                    </div>
                    <div class="form-group">
                        <label for="edit-max-temp">Max Temperature:</label>
                        <input type="number" id="edit-max-temp" value="${room.maxTemp}" required>
                    </div>                     
                    <div class="form-group">
                        <label for="edit-room-humidity">Humidity:</label>
                        <input type="number" id="edit-room-humidity" value="${room.humidity}" required>
                    </div>
                    <div class="form-group">
                        <label for="edit-min-hum">Min Humidity:</label>
                        <input type="number" id="edit-min-hum" value="${room.minHum}" required>
                    </div>
                    <div class="form-group">
                        <label for="edit-max-hum">Max Humidity:</label>
                        <input type="number" id="edit-max-hum" value="${room.maxHum}" required>
                    </div>
                    <div class="form-actions">
                        <button type="submit">Save</button>
                        <button type="button" class="cancel-button">Cancel</button>
                    </div>
                </form>
            </div>
        `;
        
        document.body.appendChild(popup);

        const form = popup.querySelector('#edit-room-form');
        const cancelButton = popup.querySelector('.cancel-button');
        
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            room.name = document.getElementById('edit-room-name').value;
            room.temperature = parseFloat(document.getElementById('edit-room-temperature').value);
            room.humidity = parseFloat(document.getElementById('edit-room-humidity').value);
            room.minTemp = parseFloat(document.getElementById('edit-min-temp').value);
            room.maxTemp = parseFloat(document.getElementById('edit-max-temp').value);
            room.minHum = parseFloat(document.getElementById('edit-min-hum').value);
            room.maxHum = parseFloat(document.getElementById('edit-max-hum').value);
            
            updateRooms();
            saveRooms();
            document.body.removeChild(popup);
        });

        cancelButton.addEventListener('click', () => {
            document.body.removeChild(popup);
        });
    }
}

function saveRooms() {
    localStorage.setItem('rooms', JSON.stringify(rooms));
}

function loadRooms() {
    const storedRooms = localStorage.getItem('rooms');
    if (storedRooms) {
        return JSON.parse(storedRooms);
    }
    return [];
}

rooms.push(...loadRooms());
updateRooms();

function simulateRoomConditions() {
    rooms.forEach(room => {
        if (room.active) {
            // Gradual temperature change
            const tempChange = (Math.random() * 0.2 - 0.1); // Smaller, more gradual change
            room.temperature = parseFloat((room.temperature + tempChange).toFixed(1));

            // Gradual humidity change
            const humChange = Math.random() * 2 - 1; // Smaller range of humidity change
            room.humidity = parseFloat((room.humidity + humChange).toFixed(1));

            // Ensure temperature and humidity stay within reasonable bounds
            room.temperature = Math.max(10, Math.min(35, room.temperature));
            room.humidity = Math.max(20, Math.min(80, room.humidity));
        }
    });
    updateRooms();
}

// Update room conditions every 3 seconds
setInterval(simulateRoomConditions, 3000);


function getRoomData() {
    return rooms.map(room => ({
        id: room.id,
        name: room.name,
        floor: room.floor,
        building: room.building,
        temperature: room.temperature,
        humidity: room.humidity,
        lightOn: room.lightOn,
        fanOn: room.fanOn,
        active: room.active,
        temperatureUnit: room.temperatureUnit,
        minTemp: room.minTemp,
        maxTemp: room.maxTemp,
        minHum: room.minHum,
        maxHum: room.maxHum,
    }));
}

function sendRoomData() {
    fetch('saveData.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ rooms: getRoomData() }) // Send proper rooms data
    })
    .then(response => response.json())
    .then(data => console.log('Server response:', data))
    .catch(error => console.error('Error:', error));
}

// Send data every 5 seconds
setInterval(sendRoomData, 5000);

// Light control and recording functionality
let mediaRecorder;
let audioChunks = [];
let audioBlobUrl; // To store the recorded audio URL
const lightButton = document.getElementById('light-button');
const audioPlayer = document.getElementById('audio-player');
const lightBulb = document.createElement('img'); // Create bulb image element

// Initialize the bulb image
lightBulb.id = 'light-bulb';
lightBulb.src = 'bulb-off.jpg'; // Default to the "off" bulb image
lightBulb.alt = 'Light Bulb';
lightBulb.style.width = '100px';
lightBulb.style.margin = '20px 0';
lightBulb.style.transition = 'filter 0.3s ease-in-out';

// Add the bulb image to the light container
const lightContainer = document.getElementById('light-container');
lightContainer.insertBefore(lightBulb, lightButton);

// Function to toggle the light
function toggleLight(status) {
    console.log('Toggling light to:', status);
    if (status === 'on') {
        lightButton.classList.add('on');
        lightButton.classList.remove('off');
        lightButton.textContent = 'Turn Light Off';
        lightBulb.src = 'bulb-on.png'; // Update to the "on" bulb image
        startRecording();
    } else {
        lightButton.classList.add('off');
        lightButton.classList.remove('on');
        lightButton.textContent = 'Turn Light On';
        lightBulb.src = 'bulb-off.jpg'; // Update to the "off" bulb image
        stopAndDeleteRecording();
    }
}

// Example: Add an event listener to the button for testing
lightButton.addEventListener('click', () => {
    const isOn = lightButton.classList.contains('on');
    toggleLight(isOn ? 'off' : 'on');
});

// Speech Recognition
const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
recognition.lang = 'en-US';
recognition.interimResults = false;
recognition.maxAlternatives = 1;

// Start speech recognition
recognition.start();

// Handle recognized speech
recognition.onresult = (event) => {
    const command = event.results[0][0].transcript.toLowerCase().trim();
    console.log('Speech command received:', command);

    // More flexible command matching
    if (command.includes('turn') && command.includes('on') && command.includes('light')) {
        console.log('Turning light on');
        toggleLight('on');
    } else if (command.includes('turn') && command.includes('off') && command.includes('light')) {
        console.log('Turning light off');
        toggleLight('off');
    } else {
        console.log('Command not recognized:', command);
    }
};

// Restart recognition to continuously listen for commands
recognition.onend = () => {
    // console.log('Speech recognition ended, restarting...');
    recognition.start();
};

// Add error handling
// recognition.onerror = (event) => {
    // console.error('Speech recognition error:', event.error);
    // Attempt to restart recognition after error
//     setTimeout(() => {
//         recognition.start();
//     }, 1000);
// };
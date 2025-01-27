<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Building Rooms Temperature and Humidity Monitor</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <a href="/">
            <img src="logo.webp" alt="Logo">
        </a>
        <h2 class="content-line">
            EKPOSINS
        </h2>
    </header>

    <div id="audio-controls">
        <button id="start-recording">Start Recording</button>
        <button id="stop-recording" disabled>Stop Recording</button>
        <audio id="audio-player" controls></audio>
    </div>
    
    <div id="rooms-container">
        <!-- Rooms will be dynamically generated here -->
    </div>

    <div id="empty-div">
    </div>

    <script src="script.js"></script>
    <footer>
        <p>
        <img src="logo.jpg" alt="Logo" style="height: 30px; margin-right: 10px;" />
        &copy; <?php echo date("Y"); ?> All University Rooms Temperature and Humidity Monitor. All rights reserved.
        </p>
    </footer>

</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eksipnos..  All Building Rooms Temperature and Humidity Monitor</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <a href="/">
            <img src="logo.webp" alt="Logo">
        </a>
        <h2 class="content-line">
            Eksipnos
        </h2>
    </header>

    <div id="rooms-container">
        <!-- Rooms will be dynamically generated here -->
    </div>
    
    <div id="light-container">
        <p class="lights-on">Say 'Turn On The Light' or 'Turn Off The Light'</p>
        <button hidden id="light-button" class="off">Turn Light On</button>
        <audio id="audio-player" controls style="display: none;"></audio>
    </div>

    <div id="audio-controls">
    </div>

    <div id="empty-div"></div>

    <script src="script.js"></script>

    <footer>
        <p>
        <img src="logo.jpg" alt="Logo" style="height: 30px; margin-right: 10px;" />
        &copy; <?php echo date("Y"); ?> All University Rooms Temperature and Humidity Monitor. All rights reserved.
        </p>
    </footer>

</body>
</html>

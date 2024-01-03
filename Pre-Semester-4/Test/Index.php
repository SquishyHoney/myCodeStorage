<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if ($_POST["name"] === "password") {
        header("Location: Web.html");
        exit();
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Form</title>
    <link rel="stylesheet" href="Style.css" />
</head>
<body>
    <h1>Welcome to PHP testing ground</h1>
    <form action="" method="post">
        <label for="name">Enter Key : </label>
        <input type="text" name="name" placeholder="Enter 'password' ">
        <button type="submit">Submit</button>
    </form>
</body>
</html>

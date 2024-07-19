<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Marks Form</title>
<style>
    body {
         font-family: comic sans Ms;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    input[type="text"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
         font-family: comic sans Ms;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Student Marks Form</h2>
    <form action="Marks" method="post">
        <input type="text" name="pin" placeholder="Enter PIN" required>
        <input type="number" name="Cryptography" placeholder="Enter Cryptography Marks" required>
        <input type="number" name="bda" placeholder="Enter Big Data Analytics Marks" required>
        <input type="number" name="ml" placeholder="Enter Machine Learning Marks" required>
        <input type="number" name="ads" placeholder="Enter Advanced Data Structures Marks" required>
        <input type="number" name="swm" placeholder="Enter Solid Waste Management Marks" required>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>

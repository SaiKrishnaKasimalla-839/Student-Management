<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Stunning Webpage</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    form {
        background-color: #e2f3f5; 
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    input[type="text"] {
        width: 300px;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }
    button[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50; 
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
    }
    button[type="submit"]:hover {
        background-color: #45a049; 
    }
</style>
</head>
<body>
    <form method="post" action="AttendanceServlet">
        <input type="text" placeholder="Enter Your Pin.." name="pin">
        <button type="submit">Submit</button>
    </form>
</body>
</html>

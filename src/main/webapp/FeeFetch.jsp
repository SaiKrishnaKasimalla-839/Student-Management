<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Fee Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        background-image:url('https://img.freepik.com/free-vector/flat-university-concept_23-2148176379.jpg?ga=GA1.1.171440431.1708965654&semt=ais_user');
        background-repeat:no-repeat;
        background-size:cover;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    form {
        display: flex;
        flex-direction: column;
        width: 300px;
    }
    label {
        margin-bottom: 10px;
        font-weight: bold;
    }
    input[type="text"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    button {
        padding: 10px;
        border: none;
        background-color: #4CAF50;
        color: white;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Enter PIN to Fetch Fee Details</h2>
    <form action="FeeFetch" method="get">
        <label for="pin">PIN:</label>
        <input type="text" id="pin" name="pin" required>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>

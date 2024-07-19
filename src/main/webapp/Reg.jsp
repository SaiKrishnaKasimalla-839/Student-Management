<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign-Up Page</title>
<style>
    body {
        font-family: 'Comic Sans MS', sans-serif;
        background: linear-gradient(0deg, rgba(144, 238, 144, 0.5) 0%, rgba(144, 238, 144, 1) 100%), 
                    url('https://img.freepik.com/free-vector/flat-university-background_23-2148168608.jpg?size=626&ext=jpg&ga=GA1.1.171440431.1708965654&semt=ais_user');
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background-color: rgba(255, 255, 255, 0.9); /* Slight transparency for readability */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        margin: 50px auto;
    }
    .form-container h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }
    .form-container input[type="text"],
    .form-container input[type="email"],
    .form-container input[type="password"],
    .form-container input[type="file"] {
        width: 100%;
        padding: 10px;
        margin: 8px -5px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-family: 'Comic Sans MS', sans-serif;
    }
    .form-container input[type="text"]:focus,
    .form-container input[type="email"]:focus,
    .form-container input[type="password"]:focus,
    .form-container input[type="file"]:focus {
        border-color: #90EE90;
    }
    .form-container button {
        width: 100%;
        padding: 10px;
        background: linear-gradient(0deg, rgba(144, 238, 144, 0.5) 0%, rgba(144, 238, 144, 1) 100%);
        color: #fff;
        border: none;
        font-family: 'Comic Sans MS', sans-serif;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .form-container button:hover {
        background-color: #218838; 
    }
</style>
</head>
<body>
<div class="form-container">
    <h2>Sign-Up</h2>
    <form action="Reg" method="post" enctype="multipart/form-data">
        <input type="text" name="firstname" placeholder="First Name" required>
        <input type="text" name="lastname" placeholder="Last Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="text" name="Pin" placeholder="Pin-No" required>
        <input type="file" name="Profile" accept="image/*" required>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>

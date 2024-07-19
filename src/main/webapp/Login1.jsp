<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: 'Comic Sans MS', sans-serif;
        background: linear-gradient(0deg, rgba(144, 238, 144, 0.5) 0%, rgba(144, 238, 144, 1) 100%), 
                    url('https://img.freepik.com/free-vector/students-using-e-learning-platform-video-laptop-graduation-cap-online-education-platform-e-learning-platform-online-teaching-concept_335657-795.jpg?w=1060&t=st=1717482921~exp=1717483521~hmac=495efca0cdcb6444b272493beae2abe2304a6cdcda314d0387dab6afcfad3aee');
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
    .login-container {
        background-color: rgba(255, 255, 255, 0.9); 
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .login-container h2 {
        margin-bottom: 20px;
        color: #333;
    }
    .login-container label {
        color: #333;
        font-family: 'Comic Sans MS', sans-serif;
    }
    .login-container input[type="email"],
    .login-container input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px -5px;
        font-family: 'Comic Sans MS', sans-serif;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .login-container input[type="submit"] {
        width: 100%;
        padding: 10px;
        background: linear-gradient(0deg, rgba(144, 238, 144, 0.5) 0%, rgba(144, 238, 144, 1) 100%);
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-family: 'Comic Sans MS', sans-serif;
        transition: background-color 0.3s;
    }
    .login-container input[type="submit"]:hover {
        background-color: #218838; 
    }
    .login-container .register-btn {
        display: block;
        margin-top: 10px;
        text-align: center;
        font-size: 14px;
        color: #333;
        text-decoration: none;
        font-family: 'Comic Sans MS', sans-serif;
    }
</style>
</head>
<body>

    <div class="login-container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="pin">PIN Number:</label>
            <input type="password" id="pin" name="pin" required>
            <input type="submit" value="Login">
            <a href="Reg.jsp" class="register-btn">Not Registered Yet?</a>
        </form>
    </div>
    
</body>
</html>

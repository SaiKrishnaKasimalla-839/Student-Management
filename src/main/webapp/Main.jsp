\<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
<title>Student Administration</title>
<style>
    body {
        font-family: 'Montserrat', sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
    }
    .topbar {
        width: 100%;
        background-color: #28a745;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1;
    }
    .topbar .search-container {
        flex-grow: 1;
        margin-left: 220px;
        margin-right: 325px;
    }
    .topbar .search-container input {
        width: 100%;
        padding: 8px;
        border: none;
        border-radius: 4px;
    }
    .topbar .profile {
        display: flex;
        align-items: center;
        margin-left: auto;
        padding-right: 20px;
    }
    .topbar .profile a {
        display: flex;
        align-items: center;
        text-decoration: none;
        color: white;
        flex-direction: column;
    }
    .topbar .profile p {
        color: #fff;
        margin: 0;
        margin-top: 5px;
    }
    .navbar {
        width: 200px;
        background-color: #28a745; 
        height: 100%;
        position: fixed;
        top: 60px;
        overflow: auto;
        box-shadow: 4px 0 8px rgba(0, 0, 0, 0.1);
        padding-top: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .navbar img {
        width: 180px;
        height: auto;
        margin-bottom: 20px;
        border-radius: 8px;
    }
    .navbar a {
        display: block;
        color: #fff;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        transition: background-color 0.3s;
        width: 100%;
    }
    .navbar a:hover {
        background-color: #218838; 
    }
    .grey-bg {
        background-color: #F5F7FA;
        margin-left: 200px; 
        padding-top: 80px; 
        width: calc(100% - 200px);
    }
    
  


    
</style>
</head>
<body>
    <div class="topbar">
        <div class="search-container">
            <input type="text" placeholder="Search..">
        </div>
       
    </div>
    <div class="navbar">
 
        <a href="home.jsp">Home</a>
        <a href="Login1.jsp">Examinations</a>
        <a href="Login1.jsp">College Fee</a>
        <a href="Reg.jsp">Sign-Up</a>
        <a href="Login.jsp">Sign-In</a>
        <a href="Login1.jsp">Courses</a>
        <a href="Login1.jsp">Attendance</a>
    </div>
</body>
</html>

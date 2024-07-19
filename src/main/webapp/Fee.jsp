<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fee Submission Form</title>
</head>
<body>
<h2>Submit Fee Details</h2>
<form action="Fee" method="post">
    <label for="pin">PIN:</label>
    <input type="text" id="pin" name="pin" required><br><br>
    
    <label for="College_Fee">College Fee:</label>
    <input type="text" id="College_Fee" name="College_Fee" required><br><br>
    
    <label for="Management">Management Fee:</label>
    <input type="text" id="Management" name="Management" required><br><br>
    
    <label for="due">Due:</label>
    <input type="text" id="due" name="due" required><br><br>
    
    <button type="submit">Submit</button>
</form>
</body>
</html>

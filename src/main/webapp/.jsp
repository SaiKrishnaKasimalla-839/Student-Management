<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Page</title>
</head>
<body>
    <h2>Data from Servlet</h2>
    <ul>
        <%
            List<String> dataList = (List<String>) request.getAttribute("dataList");
            if (dataList != null) {
                for (String data : dataList) {
                    out.println("<li>" + data + "</li>");
                }
            } else {
                out.println("<li>No data available</li>");
            }
        %>
    </ul>
</body>
</html>

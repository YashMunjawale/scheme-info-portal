<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Schemes</title>
<link rel="stylesheet" href="style.css">
</head>
<body class="scheme-bg">

<div class="container">
    <h2>Available Government / Private Schemes</h2>

    <%
        List<String[]> schemes = (List<String[]>) request.getAttribute("schemes");
    %>

    <div class="scheme-container">
        <%
            if (schemes != null && !schemes.isEmpty()) {
                for (String[] scheme : schemes) {
        %>
            <div class="scheme-card">
                <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Scheme">
                <h3><%= scheme[0] %></h3>
                <p><strong>Benefit:</strong> <%= scheme[1] %></p>
                <p><%= scheme[2] %></p>
            </div>
        <%
                }
            } else {
        %>
            <p>No schemes available.</p>
        <%
            }
        %>
    </div>

    <div class="buttons">
        <a href="eligibility.jsp" class="btn">Check Eligibility</a>
        <a href="logout" class="btn">Logout</a>
    </div>
</div>

</body>
</html>
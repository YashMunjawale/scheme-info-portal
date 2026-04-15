<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="container">
        <h2>Admin Login</h2>

        <%
            String error = (String) request.getAttribute("errorMessage");
            if (error != null) {
        %>
            <p style="color:red; text-align:center; font-weight:bold;"><%= error %></p>
        <%
            }
        %>

        <form action="adminLogin" method="post">
            <label>Username:</label>
            <input type="text" name="username" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login">
        </form>

        <p>
            <a href="index.jsp">Back to Home</a>
        </p>
    </div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<link rel="stylesheet" href="style.css">
</head>
<body class="login-bg">

    <div class="container">
        <h2>User Login</h2>

        <%
            String error = (String) request.getAttribute("errorMessage");
            if (error != null) {
        %>
            <p style="color:red; text-align:center; font-weight:bold;"><%= error %></p>
        <%
            }
        %>

        <form action="login" method="post">
            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login">
        </form>

        <p>
            New user?
            <a href="register.jsp">Register here</a>
        </p>
    </div>

</body>
</html>
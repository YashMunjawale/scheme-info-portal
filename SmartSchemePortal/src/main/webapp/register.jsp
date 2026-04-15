<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<link rel="stylesheet" href="style.css">
</head>
<body class="register-bg">

    <div class="container">
        <h2>User Registration</h2>

        <form action="register" method="post">

            <label>Full Name:</label>
            <input type="text" name="name" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Password:</label>
            <input type="password" name="password" required>

            <label>Age:</label>
            <input type="number" name="age" required>

            <label>Family Income:</label>
            <input type="number" name="family_income" required>

            <label>Percentage:</label>
            <input type="number" step="0.01" name="percentage" required>

            <label>Education Level:</label>
            <select name="education_level" required>
                <option value="">Select</option>
                <option value="10th">10th</option>
                <option value="12th">12th</option>
                <option value="Diploma">Diploma</option>
                <option value="Graduate">Graduate</option>
            </select>

            <input type="submit" value="Register">
        </form>

        <p>
            Already have an account?
            <a href="login.jsp">Login here</a>
        </p>
    </div>

</body>
</html>
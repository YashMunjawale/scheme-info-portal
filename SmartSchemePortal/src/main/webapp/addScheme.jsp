<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Scheme</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="container">
        <h2>Add New Scheme</h2>

        <form action="addScheme" method="post">

            <label>Scheme Name:</label>
            <input type="text" name="name" required>

            <label>Benefit:</label>
            <input type="text" name="benefit" required>

            <label>Description:</label>
            <input type="text" name="description" required>

            <label>Minimum Age:</label>
            <input type="number" name="min_age" required>

            <label>Maximum Age:</label>
            <input type="number" name="max_age" required>

            <label>Maximum Income:</label>
            <input type="number" name="max_income" required>

            <label>Minimum Percentage:</label>
            <input type="number" name="min_percentage" required>

            <label>Education Level:</label>
            <select name="education_level" required>
                <option value="12th">12th</option>
                <option value="Undergraduate">Undergraduate</option>
                <option value="Postgraduate">Postgraduate</option>
                <option value="PhD">PhD</option>
            </select>

            <input type="submit" value="Add Scheme">
        </form>

        <p>
            <a href="adminDashboard.jsp">Back to Dashboard</a>
        </p>
    </div>

</body>
</html>
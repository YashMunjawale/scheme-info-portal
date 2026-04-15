<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eligible Schemes</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">
    <h2>Eligible Schemes</h2>

    <%
        List<String[]> schemes = (List<String[]>) request.getAttribute("schemes");
    %>

    <table>
        <tr>
            <th>Name</th>
            <th>Benefit</th>
            <th>Description</th>
        </tr>

        <%
            if (schemes != null && !schemes.isEmpty()) {
                for (String[] scheme : schemes) {
        %>
                    <tr>
                        <td><%= scheme[0] %></td>
                        <td><%= scheme[1] %></td>
                        <td><%= scheme[2] %></td>
                    </tr>
        <%
                }
            } else {
        %>
                <tr>
                    <td colspan="3">No schemes found</td>
                </tr>
        <%
            }
        %>
    </table>

    <div class="buttons">
        <a href="eligibility.jsp" class="btn">Check Again</a>
        <a href="logout" class="btn">Home</a>
    </div>
</div>

</body>
</html>
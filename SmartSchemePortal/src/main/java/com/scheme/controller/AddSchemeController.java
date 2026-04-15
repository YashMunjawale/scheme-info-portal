package com.scheme.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.scheme.dao.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addScheme")
public class AddSchemeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String benefit = request.getParameter("benefit");
        String description = request.getParameter("description");

        int minAge = Integer.parseInt(request.getParameter("min_age"));
        int maxAge = Integer.parseInt(request.getParameter("max_age"));
        int maxIncome = Integer.parseInt(request.getParameter("max_income"));
        int minPercentage = Integer.parseInt(request.getParameter("min_percentage"));

        String educationLevel = request.getParameter("education_level");

        try {
            Connection con = DBConnection.getConnection();

            String sql = "INSERT INTO schemes(name, benefit, description, min_age, max_age, max_income, min_percentage, education_level) "
                       + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, benefit);
            ps.setString(3, description);
            ps.setInt(4, minAge);
            ps.setInt(5, maxAge);
            ps.setInt(6, maxIncome);
            ps.setInt(7, minPercentage);
            ps.setString(8, educationLevel);

            int result = ps.executeUpdate();

            if (result > 0) {
                response.sendRedirect("adminDashboard.jsp");
            } else {
                response.getWriter().println("Scheme not added.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
package com.scheme.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.scheme.dao.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        int age = Integer.parseInt(request.getParameter("age"));
        double familyIncome = Double.parseDouble(request.getParameter("family_income"));
        double percentage = Double.parseDouble(request.getParameter("percentage"));
        String educationLevel = request.getParameter("education_level");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            Connection con = DBConnection.getConnection();

            if (con == null) {
                out.println("Database connection failed.");
                return;
            }

            String sql = "INSERT INTO users(name, email, password, age, family_income, percentage, education_level) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setInt(4, age);
            ps.setDouble(5, familyIncome);
            ps.setDouble(6, percentage);
            ps.setString(7, educationLevel);

            int row = ps.executeUpdate();

            if (row > 0) {
                response.sendRedirect("login.jsp");
            } else {
                out.println("Registration Failed");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        }
    }
}
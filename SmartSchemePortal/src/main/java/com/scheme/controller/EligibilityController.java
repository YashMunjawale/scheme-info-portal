package com.scheme.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.scheme.dao.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/eligibility")
public class EligibilityController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int age = Integer.parseInt(request.getParameter("age"));
        int income = Integer.parseInt(request.getParameter("income"));
        int percentage = Integer.parseInt(request.getParameter("percentage"));
        String education = request.getParameter("education");

        List<String[]> schemes = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM schemes WHERE ? BETWEEN min_age AND max_age "
                       + "AND max_income >= ? "
                       + "AND min_percentage <= ? "
                       + "AND education_level = ?";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, age);
            ps.setInt(2, income);
            ps.setInt(3, percentage);
            ps.setString(4, education);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String[] scheme = {
                    rs.getString("name"),
                    rs.getString("benefit"),
                    rs.getString("description")
                };
                schemes.add(scheme);
            }

            request.setAttribute("schemes", schemes);
            request.getRequestDispatcher("result.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
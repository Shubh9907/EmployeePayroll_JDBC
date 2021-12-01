package com.bridgelabz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeePayrollService {
    public static void main(String[] args)  {
        System.out.println("Welcome to Employee Payroll Service Program");

        String jdbcUrl = "jdbc:mysql://localhost:3306/PayrollService?useSSL=false";
        String user = "root";
        String password = null;
        Connection con;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded");
            con = DriverManager.getConnection(jdbcUrl, user, null);
            System.out.println("Connection is successfull - " +con);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

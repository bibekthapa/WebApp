/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.WebProject.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HOME
 */
public class DbConnection {
    
    private Connection conn;
    private PreparedStatement stmt;
    
    
   public void open() throws ClassNotFoundException, SQLException
   {
         Class.forName("com.mysql.jdbc.Driver");
          conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/course_management", "root", null);
    }
   
   public PreparedStatement init(String sql) throws SQLException
   {
       stmt=conn.prepareStatement(sql);
       return stmt;
   
   }
   
   public ResultSet executeQuery() throws SQLException //ExecuteQuery return ResultSet type
   {
       return stmt.executeQuery();
   
   }
   public int executeUpdate() throws SQLException //executeUpdate returns Int typr
   {
       return stmt.executeUpdate();
   
   }
   
   public void close() throws SQLException
   {
       if(conn!=null ||!conn.isClosed())
       {
           conn.close();
           conn=null;
       
       }
   
   }
    
    
    
}

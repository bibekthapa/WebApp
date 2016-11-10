/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.WebProject.dao.impl;

import com.example.WebProject.dao.CourseDao;
import com.example.WebProject.entity.Course;
import com.example.WebProject.util.DbConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HOME
 */
public class CourseDaoImpl implements CourseDao {
     DbConnection db=new DbConnection();

    @Override
    public List<Course> getAll() throws ClassNotFoundException, SQLException {
        
       
        List<Course> courseList = new ArrayList<>();
        db.open();
        String sql="SELECT * FROM courses";
        db.init(sql);
        ResultSet rs= db.executeQuery();
        while(rs.next())
        {
            Course c=new Course();
           c.setId(rs.getInt("course_id"));
           c.setName(rs.getString("course_name"));
           c.setDescription(rs.getString("course_description"));
           c.setFees(rs.getDouble("course_fees"));
           c.setStatus(rs.getBoolean("course_status"));
           
           courseList.add(c);
        
        
        }
         return courseList;
        }

    @Override
    public int insert(Course c) throws ClassNotFoundException, SQLException {
                        db.open();
                       String sql="INSERT INTO courses(course_name,course_description,course_fees,course_status)"
                               + "VALUES(?,?,?,?)";
                       PreparedStatement stmt=db.init(sql);
                       stmt.setString(1, c.getName());
                       stmt.setString(2, c.getDescription());
                       stmt.setDouble(3, c.getFees());
                       stmt.setBoolean(4,c.getStatus());
                       int result=db.executeUpdate();
                        db.close();
                        
                        return result;
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.WebProject.dao;

import com.example.WebProject.entity.Course;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author HOME
 */
public interface CourseDao {
    
    List<Course> getAll()throws ClassNotFoundException,SQLException;
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.WebProject.dao.impl;

import com.example.WebProject.dao.CourseDao;
import com.example.WebProject.entity.Course;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HOME
 */
public class CourseDaoImpl implements CourseDao {

    @Override
    public List<Course> getAll() throws ClassNotFoundException, SQLException {
        List<Course> courseList = new ArrayList<>();
        courseList.add(new Course(1, "Advanced Java", "Teaches Advanced Java", 20000.0, true));
        courseList.add(new Course(2, "Android Programming", "Teaches Android ", 20000.0, true));
        courseList.add(new Course(3, "PHP", "Teaches PHP", 20000.0, true));

        return courseList;
        

    }

}

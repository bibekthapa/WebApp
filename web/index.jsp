



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.WebProject.dao.impl.CourseDaoImpl"%>
<%@page import="com.example.WebProject.dao.CourseDao"%>
<%@page import="com.example.WebProject.entity.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
   
    
    <body>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Description</th>
                <th>Fees</th>
                <th>Status</th>
            </tr>
            <% 
               Class.forName("com.mysql.jdbc.Driver");
               Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/course", "root", null);
               String sql="SELECT * FROM courses";
               PreparedStatement stmt=conn.prepareStatement(sql);
               ResultSet rs=stmt.executeQuery();
               while(rs.next()){
            
            %>
            <tr>
                <td><%out.println(rs.getInt("course_id")); %></td>
                 <td><%out.println(rs.getString("course_name")); %></td>
                  <td><%out.println(rs.getString("course_description")); %></td>
                   <td><%out.println(rs.getDouble("course_fees")); %></td>
                    <td><%out.println(rs.getBoolean("course_status")); %></td>
                
                
                
                <%}%> 
            </tr>
                  
            
        </table>
                   
    </body>
   
</html>

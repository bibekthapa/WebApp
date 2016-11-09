

<%@page import="java.sql.SQLException"%>
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
                  <tr>
                    <%  CourseDao courseDao=new CourseDaoImpl();
                        for(Course c:courseDao.getAll()){
                    
                    %>
                  <tr>
                      
                      
                  </tr>
                    <td><%=c.getId()%></td>
                      <td><%=c.getName()%></td>
                        <td><%=c.getDescription()%></td>
                          <td><%=c.getFees()%></td>
                            <td><%=c.getStatus()%></td>
                            
                    <%}%>
                 
          </tr>
            
            
        </table>
       
    </body>
    
</html>

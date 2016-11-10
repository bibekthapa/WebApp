




<%@page import="com.example.WebProject.util.DbConnection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.example.WebProject.dao.impl.CourseDaoImpl"%>
<%@page import="com.example.WebProject.dao.CourseDao"%>
<%@page import="com.example.WebProject.entity.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

            <div class="pull-right">
                <p>
                    <a href="addcourse.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span></a>
                </p>
            </div>
        <% try{ %>
        
       
        
        <table class="table table-bordered table-striped table-hover">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Description</th>
                <th>Fees</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <% 
                CourseDao coursedao=new CourseDaoImpl();
                
                for(Course c: coursedao.getAll()){
               
             
            
            %>
           
            <tr class="<%out.println((!c.getStatus())?"danger":"");%>">
                <td><%=c.getId()%></td>
                 <td><%out.println(c.getName());%></td>
                  <td><%out.println(c.getDescription());%></td>
                   <td><%out.println(c.getFees());%></td>
                    <td><%out.println(c.getStatus());%></td>
                    <td>
                        <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-pencil"></span></button>    
                    <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-trash"></span></button>    
                    </td>
                
                
                
                <%}
                
                %> 
            </tr>
                  
            
        </table>
                <%}catch(ClassNotFoundException ioe)
{
    out.println(ioe.getMessage());

        } 
catch(SQLException e)
{
   out.println(e.getMessage());
}
%>
    
<%@include file="footer.jsp" %>
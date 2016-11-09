

<%@page import="com.example.WebProject.entity.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page</title>
    </head>
    <body>
        <%Course course=new Course(1,"Advanced Java","Teaches Advanced Java",20000.0,true);
            
        {%>
        <h1>Hello World! <%=course.getName()%></h1>
        <%}%>
    </body>
</html>

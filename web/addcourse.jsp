<%@page import="com.example.WebProject.entity.Course"%>
<%@page import="com.example.WebProject.dao.impl.CourseDaoImpl"%>
<%@page import="com.example.WebProject.dao.CourseDao"%>
<%
    CourseDao coursedao=new CourseDaoImpl();
        if(request.getMethod().equalsIgnoreCase("post"))
        {
            Course course=new Course();
            course.setName(request.getParameter("name"));
            course.setDescription(request.getParameter("description"));
            course.setFees(Double.parseDouble(request.getParameter("fees")));
            course.setStatus((request.getParameter("status")!=null));
            coursedao.insert(course);
        }
%>


<%@include file="header.jsp" %>
<h1>Add Course</h1>
<form method="post">
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control" required="required">
        
    </div>
    <div class="form-group">
        <label>Description</label>
        <textarea type="text" name="description" class="form-control" required="required"></textarea>
    </div>
    <div class="form-group">
         <label>Fees</label>
        <input type="text" name="fees" class="form-control" required="required">
    </div>
    
    <div class="checkbox">
        <label>Status</label>
        <label>  <input type="checkbox" name="staus">Active</label>
    </div>
    <button type="submit" class="btn btn-success">Save
    </button>
    <a href="index.jsp" class="btn btn-danger">Back</a>
    
    
    
</form>



   <%@include file="footer.jsp" %>

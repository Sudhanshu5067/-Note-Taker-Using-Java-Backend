<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container">
   <%@include file="navbar.jsp" %>
   
   <br>
   
     <h1> Edit your Note </h1>
     <br>
     
     <%
     int noteId= Integer.parseInt(request.getParameter("note_id").trim());
        Session s= FactoryProvider.getFactory().openSession();
		Transaction tx= s.beginTransaction();
		Note note=(Note)s.get(Note.class, noteId);
     
     
     
     
     %>
     
     <form action="UpdateServlet" method="post">
     
     <input  value="<%= note.getId()%>" name="noteId" type="hidden"/>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Note Title</label>
    <input name="title"
    type="text" required="required" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here"
    value="<%= note.getTitle() %>"
    
    
    />
    
  </div>
  
  
  
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea name="content"
    id="content" required="required" placeholder="Enter the content"
    class="form-control"
    
    
    style="height: 300px" 
    
    <%= note.getContent() %>
    ></textarea>
  </div>
  
  
  <div class="container text-center">
  
    <button type="submit" class="btn btn-success">Save</button>
  
  </div>
  
</form>
   
   </div>
</body>
</html>
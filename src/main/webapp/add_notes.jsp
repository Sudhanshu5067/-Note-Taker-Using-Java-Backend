<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@ include file="all_js_css.jsp" %>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 20px;
        background-image: url('img/anime-anime-girls-cats-sitting-animals-umbrella-2274358-wallhere.com.jpg');
        background-size: cover;
            background-position: center;
            backdrop-filter: blur(10px);
    }
    .container {
        max-width: 600px;
        margin: auto;
        /* background: white;
        
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); */
    }
    .form-label {
        font-weight: bold;
    }
    .form-control {
        border-radius: 4px;
        border: 1px solid #ced4da;
        padding: 10px;
        width: 100%;
        margin-bottom: 10px;
    }
    .btn-danger {
        background-color: #dc3545;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.2s;
    }
    .btn-danger:hover {
        background-color: #c82333;
        transform: scale(1.05);
    }
</style>
</head>
<body>
 <div class="container"></div>
   <%@include file="navbar.jsp" %>
   <br>
   
   <h1 style="color: ghostwhite"> Please Fill your Note details </h1>
   <br>

<!-- this is the form  -->

<form action="SaveNoteServlet4" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label" style="color: white;">Note Title</label>
    <input name="title"
    type="text" required="required" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here"
    style="background:papayawhip " />
    
  </div>
  
  
  
  <div class="mb-3">
    <label for="content" class="form-label" style="color: white;">Note Content</label>
    <textarea name="content"
    id="content" required="required" placeholder="Enter the content"
    class="form-control"
    
    
    style="height: 300px; background: papayawhip" 
    
    
    ></textarea>
  </div>
  
  
  <div class="container text-center">
  
    <button type="submit" class="btn btn-danger">ADD</button>
  
  </div>
  
</form>
</body>
</html>
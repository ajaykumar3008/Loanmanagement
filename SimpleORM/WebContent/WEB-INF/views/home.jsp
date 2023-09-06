<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*,com.ORM.*" %>
<% Employee Emp=(Employee)request.getAttribute("Emp"); %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">

<h1 class="text-center">Employee Details</h1><br><br>
<form action="http://localhost:8081/SimpleORM/login">
<div class="text-center">
    <label for="empID">Employee ID:</label>
    <input type="text" id="empID" name="empID" value="<%=Emp.getEmpno() %>"><br><br>
    
    <label for="empName">Employee Name:</label>
    <input type="text" id="empName" name="empName" value="<%=Emp.getEname() %>"><br><br>
    
    <label for="salary">Salary:</label>
    <input type="text" id="salary" name="salary" value="<%=Emp.getSal() %>"><br><br>
    
    <label for="job">Job:</label>
    <input type="text" id="job" name="job" value="<%=Emp.getJob() %>"><br><br>
    
    <button name="click" value="first" onclick="first()">FIRST</button>
    <button name="click" value="next" onclick="next()">NEXT</button>
    <button name="click" value="prev" onclick="prev()">PREV</button>
    <button name="click" value="last" onclick="last()">LAST</button>
    <button name="click" value="add" onclick="add()">ADD</button>
    
    
</div>
</form>
<form action="/">
   <button name="click" value="edit" onclick="edit()">EDIT</button>
<button name="click" value="save" onclick="save()">SAVE</button>
<button name="click" value="delete" onclick="delete1()">DELETE</button>
</form>
</div>
</body>
</html>
<%@page import="jsp_prc_student_dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% List<Student> list=(List)request.getAttribute("list"); %>
  <table border="2px" height="400px" width="200px">
	  <tr>
	  	<th>Id</th>
	  	<th> Name</th>
	  	<th> Father Name</th>
	  	<th> email</th>
	  	<th>password</th>
	  	<th>phone</th>
	  	<th>fees</th>
	  	<th>Delete</th>
	  	<th>Update</th>
	  </tr>
	  	<%for(Student student:list){ %>
	  	<tr>
	  			<td><%= student.getId() %></td>
	  			 <td><%= student.getName() %></td>
	  			<td><%= student.getFname() %></td>
	  			<td><%= student.getEmail() %></td>
	  			<td><%= student.getPassword() %></td>
	  			<td><%= student.getPhone() %></td>
	  			<td><%= student.getFees() %></td>
	  			<td><a href="./delete?id=<%= student.getId() %>"><button style="background-color:brown; color: white;">Delete</button></a></td>
	  			<td><a href="./update?id=<%= student.getId() %>"><button style="background-color: brown; color: white;">Update</button></a></td>
	  	</tr>
	  	<%} %>
  </table>
</body>
</html>
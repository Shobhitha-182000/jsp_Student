<%@page import="jsp_prc_student_dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% Student student=(Student)request.getAttribute("student") ;%>
	
	<form action="edit" method="post">
			<label for="id">id</label>
		 <input type="number" name="id" placeholder="enter you phoneNumber" value=<%= student.getId() %> readonly="true">
		<br>
		
		<label for="name">First Name</label> 
		<input type="text" name="name"placeholder="enter first name" value=<%= student.getName() %>><br>
		<label for="fname">Father Name</label> 
		<input type="text" name="fname"placeholder="enter your father name" value=<%= student.getFname()%>><br>

		<label for="email">Email</label>
		 <input type="email" name="email" placeholder="enter your email" value=<%= student.getEmail() %>><br>
		 
			 <label for="password">Password</label>
		<input type="password" name="password" placeholder="enter your password" value=<%= student.getPassword() %>>
		<br> 
		<label for="phone">Phone</label>
		 <input type="number" name="phone" placeholder="enter you phoneNumber" value=<%= student.getPhone() %>><br>
		 
		 <label for="fees">fees</label>
		 <input type="number" name="fees" placeholder="enter you phoneNumber" value=<%= student.getFees() %> readonly="true">
		<br>
		  <input
			type="submit" value="save">
	</form>	
</body>
</html>
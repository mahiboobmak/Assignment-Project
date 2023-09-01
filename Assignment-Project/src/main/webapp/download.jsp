<%@page import="assignment.dto.AssignmentDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
 body{
 background-color: #808080;
 background-image:url("https://cdn.pixabay.com/photo/2015/12/01/15/43/black-1072366_640.jpg");
 background-repeat: no-repeat;
 background-size: 100% 100vh;
 }
.container {
	width: 400px;
	border: 3px solid;
	border-radius: 10px;
	border-color: white;
	background-color: rgba(54, 54, 54, 0.372);
	padding: 20px;
	justify-content: center;
	margin: auto;	
	margin-top:120px;
}
 h3 {
	text-align: center;
	margin-bottom: 20px;
	color: white;
	background-color:#778899;
	border-radius: 44px;
	padding: 8px;
}
h3:hover{
background-color: #B0C4DE;
}
button{
width: 100%;
	padding: 10px;
	background-color: #38d99b;
	color: white;
	font-size:15px;
	border: none;
	border-radius: 44px;
	cursor: pointer;
	justify-content: center;
	margin-top: 20px;
}
button:hover{
background-color: #37eda7;
}
th,td{
color: white;
margin: 10px;
padding: 10px;
justify-content: center;
}
table{
justify-content: center;
width: 400px;
}
h4{
color: white;
text-align: center;
}

</style>
</head>
<body>
<div class="container" id="name">
<b style="color: red"> ${msg}</b>
	<h3>Home Page</h3>
	<h4>Your Details</h4>
	<table border="2" ">
		<tr>
			<th>Name</th>
			<th>Number</th>
			<th>Email</th>
		</tr>
		<% AssignmentDto p=(AssignmentDto)request.getAttribute("object");%>
		<tr>
			<td><%=p.getFull_Name()%></td>
			<td><%=p.getMobile_Number()%></td>
			<td><%=p.getEmail_Address()%></td>
		</tr>
	</table>
	<a href="index.jsp"><button>Logout</button></a>
	</div>
</body>
</html>
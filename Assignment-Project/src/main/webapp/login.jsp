<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style>
 body{
 background-color: #808080;
 background-image:url("https://cdn.pixabay.com/photo/2015/12/01/15/43/black-1072366_640.jpg");
 background-repeat: no-repeat;
 background-size: 100% 100vh;
 }
.container {
	width: 350px;
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
#login{
text-decoration: none;
}
h3:hover{
background-color: #B0C4DE;
}
button{
width: 49%;
	padding: 10px;
	background-color: #38d99b;
	color: white;
	font-size:15px;
	border: none;
	border-radius: 44px;
	cursor: pointer;
	justify-content: center;
}
button:hover{
background-color: #37eda7;
}
label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: white;
}

input[type="text"], input[type="password"],
	select {
	width: 90%;
	padding: 10px;
	margin-bottom: 10px;
	border: 3px solid #ccc;
	border-radius: 44px;
	border-color: black;
}
span{
color: white;
}
</style>
</head>
<body>


<form action="login" id="form">
	<div class="container">

		<b style="color: red"> ${msg}</b>
	
		<a href="login.jsp" id="login"><h3>Login Here</h3></a>

 		<label for="username" class="label">Username:</label>
        <input type="text" id="username" class="inputField" name="email" placeholder="Enter the username" required>
        
        
        <label for="password" class="label">Password:</label>
        <input type="password" id="password" class="inputField" name="password" placeholder="Enter the Password" required> 
        <label for="showPassword">
    	<input type="checkbox" id="showPassword"> Show Password
		</label>      
        <a href="login.jsp"><span>Forgot Password?</span><br></a>
        <br>

        <button id="btn" type="submit">Login</button>
        <button id="btn" type="reset">Reset</button>     
        
	</div>
	<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("password");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    }

    document.getElementById("showPassword").addEventListener("change", togglePasswordVisibility);
</script>
</form>
</body>
</html>
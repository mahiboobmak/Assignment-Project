<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
<style>
.req {
	color: red;
	font-size: 15px;
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
}

h3 {
	text-align: center;
	margin-bottom: 20px;
	color: white;
	background-color:#778899;
	border-radius: 44px;
	padding: 8px;
}
a{
text-decoration: none;
}
h3:hover{
background-color: #B0C4DE;
}
input[type="submit"] {
	width: 98%;
	padding: 10px;
	background-color: #38d99b;
	color: white;
	font-size:15px;
	border: none;
	border-radius: 44px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #37eda7;
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

input[type="text"], input[type="email"], input[type="password"], input[type="number"],
	select {
	width: 90%;
	padding: 10px;
	margin-bottom: 10px;
	border: 3px solid #ccc;
	border-radius: 44px;
	border-color: black;
}
span{
color: red;
}


body {
	background-color: #808080;
	background-image:url("https://cdn.pixabay.com/photo/2015/12/01/15/43/black-1072366_640.jpg");
 background-repeat: no-repeat;
 background-size: 100% 100vh;
}
*{
color: white;
}
.formerror {
	color: red;
}
input{
color: black;
}
#name{
margin-top:80px;}
#msg{
color: red;
justify-content: center;
}
</style>
</head>
<body>


	<div class="container" id="name">
	
	<b id="msg"> ${msg}</b>
	
		<a href="index.jsp"><h3>Sign Up Page</h3></a>
		
		<Form method="post" id="signup" action="signup" name="myForm" onsubmit="return validateForm()">

			<label for="fullName">Full Name <sup class="req">*</sup> </label>
			<input type="text" id="fullName" Name="Full_Name" required placeholder="Enter Your Full Name"><b>

			
			<label for="ln">Mobile No <sup class="req">*</sup> </label>
			<input type="number" id="number" Name="Mobile_Number" required placeholder="Enter Your Mobile Number"><b>

			<label for="Em">Email Address <sup class="req">*</sup></label> 
			<input type="Email" Id="Em" Name="Email_Address" placeholder="Enter Your Email Address"><b>
			
			
			<label for="password">Password <sup class="req">*</sup></label> 
			<input type="Password" id="password" Name="Password" class="hi" placeholder="Craete a Password"><b>
			<label for="showPassword">
    		<input type="checkbox" id="showPassword"> Show Password
			</label>
			<span class="error" id="passwordError"></span><br>
			 
			<input type="submit" id="btn" value="Sign Up">
			<br>
			<br>
			<b>I'm already a member! Log In.</b>
			<a href="login.jsp"><button id="login" type="button">Log In</button></a>
			<button id="back" type="button">Back</button>
			<b  class="req">* </b>indicates a required field.
		</Form>
	</div>
	<script>
	function validateForm() {
		
        var password = document.getElementById("password").value;
        
        var passwordError = document.getElementById("passwordError");
        passwordError.innerHTML = "";
        
        if (password.length < 8) {
            passwordError.innerHTML = "Password must be at least 8 characters long.";
            return false;
        }

        if (!/[A-Z]/.test(password)) {
            passwordError.innerHTML = "Password must contain at least one uppercase letter.";
            return false;
        }

        if (!/[0-9]/.test(password)) {
            passwordError.innerHTML = "Password must contain at least one numeric digit.";
            return false;
        }
        if (!/[!@#$%^&*]/.test(password)) {
            passwordError.innerHTML = "Password must contain at least one special character (! @ # $ % ^ & *).";
            return false;
        }

        return true;
    }
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
	
</body>
</html>
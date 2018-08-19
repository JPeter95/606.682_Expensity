<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@page import="edu.jhu.sample.results.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/favicon.html" />

<!-- Template from: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_signup_form# -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
body {font-family: Arial, Helvetica, sans-serif;}

* {box-sizing: border-box}

body, html {
	height: 100%
}

/* Full-width input fields */
input[type=text], input[type=email], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=email]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

.bgimg {
	background-image: url('images/signup.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<body>
<div class="bgimg w3-display-container ">

	<div class="w3-display-topright w3-padding-large">
	  <form action="index.jsp">
	    <div class="clearfix">
          <button class="w3-button w3-white" type="submit">Back to Home Page</button>
        </div>
	  </form>
	</div>
	
	<form method="POST" action="ServletController">
	  <div class="container">
	  	<p style="color: red">${errorText}</p>
	  
	    <h1>Sign Up</h1>
	    <p>Please fill in this form to create an account.</p>
	    <hr>
	
		<label for="name"><b>Name</b></label>
	    <input type="text" placeholder="Enter Name" name="name" value="${user.name}" required>
	
	    <label for="email"><b>Email</b></label>
	    <input type="email" placeholder="Enter Email" name="email" value="${user.email}" required>
	
	    <label for="password"><b>Password</b></label>
	    <input type="password" placeholder="Enter Password" name="password" pattern="[a-zA-Z0-9]{6,}" title="At least 6 letters or numbers" required>
	
	    <label for="password-repeat"><b>Repeat Password</b></label>
	    <input type="password" placeholder="Repeat Password" name="password-repeat" pattern="[a-zA-Z0-9]{6,}" title="At least 6 letters or numbers" required>
	    
	    <label>
	      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
	    </label>
	    
	    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
	
	    <div class="clearfix">
	      <button type="reset" class="cancelbtn">Reset</button>
	   	  <button type="submit" class="signupbtn" name="action" value="CreateUser">Sign Up</button>
	    </div>
      </div>
	</form>

</div>
</body>
</html>

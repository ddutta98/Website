<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	Cookie[] cookies=request.getCookies();
	String email="",pass="";
	if(cookies!=null)
	for(int i=0;i<cookies.length;i++)
	{
		Cookie c=cookies[i];
		if(c.getName().equals("email"))
			email=c.getValue();
		else if(c.getName().equals("pass"))
			pass=c.getValue();
	}
%>
<!doctype html>
<html lang="en" onlo>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>Admin Login</title>
<link rel="canonical" href="index.html">
<link href="Css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style type="text/css">
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<link href="signin.css" rel="stylesheet">
</head>
<body class="text-center">
	<form class="form-signin" id="form1" action="login" method="post">
		<img class="mb-4" src="Images/logo.png" alt="" width="200" height="72">
		<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
		<label for="inputEmail" class="sr-only">Username</label> 
		<input type="email" name="email" id="inputEmail" class="form-control" placeholder="Username" required autofocus value="<%=email%>">
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" name="pass" id="inputPassword" class="form-control" placeholder="Password" required value="<%=pass%>">
		<div class="checkbox mb-3">
			<label>
			<input type="checkbox" name="c1" value="remember-me">
				Remember me
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	</form>	
</body>
</html>
<% session.invalidate(); %>
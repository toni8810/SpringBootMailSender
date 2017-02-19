<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Spring Boot Yeah</title>
</head>
<body>

<div class="col-md-12">
	<div class="col-md-4"></div>
	<form action='<c:url value="/sendMail" />' class="form-group col-md-4" method="post">
		<input type="email" class="form-control" placeholder="Adressee" required="required" name="addressee" />
		<input type="text" class="form-control" placeholder="Subject" required="required" name="subject" />
		<textarea rows="5" cols="3" class="form-control" placeholder="Your message" required="required" name="message" ></textarea>
		<button type="submit" class="btn btn-success">Send</button>
	</form>
	<div class="col-md-4"></div>
</div>
</body>
</html>
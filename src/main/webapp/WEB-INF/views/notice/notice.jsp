<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/notice.css">
</head>
<body>
	<div class="container-fluid benner d-xs-none">
		<div class="bg"></div>
		<div class="title">
			<h1>고객센터<small>${category.title}</small></h1>
			<p>${category.content}</p>
		</div>
	</div>
	<div class="container">
		<div class="cttop">
			<a href="notice" class="ct_back">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
				
			</a>
		</div>
	</div>
</body>
</html>
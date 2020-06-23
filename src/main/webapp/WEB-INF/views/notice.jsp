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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/resource/css/board.css" />
</head>
<body>
	<main class="board">
		<div class="ui-header">
			<h2 class="title">공지사항</h2>
		</div>
		<div class="ui-tabs">
			<ul>
			<c:choose>
				<c:when test="${empty category}">
					<li class="active"><a href="notice">전체</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="notice">전체</a></li>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${category eq '공지'}">
					<li class="active"><a href="notice?category=공지">공지</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="notice?category=공지">공지</a></li>
				</c:otherwise>
			</c:choose>
				
				<c:choose>
				<c:when test="${category eq '이벤트'}">
					<li class="active"><a href="notice?category=이벤트">이벤트</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="notice?category=이벤트">이벤트</a></li>
				</c:otherwise>
			</c:choose>
			
			</ul>
		</div>
		<div class="board-main">
			<ul id="list" data-role="listview" data-theme="a" data-filter="true">
			<c:forEach items="${articals}" var="articall">
				<li>
					<a class="article" href="">
						<em class="category">${articall.category}</em>
						<em class="notice">${articall.notice}</em>
						<div class="info">
							<h3 class="title">${articall.title}</h3>
							<span class="author">${articall.author}</span>
							<span class="created-at">${articall.createdat}</span>
						</div>
					</a>
				</li>
			</c:forEach>
			</ul>
		</div>
	</main>
</body>
</html>
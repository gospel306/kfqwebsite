<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${category.title}</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resource/css/noticeboard.css">
<script src="<%=request.getContextPath()%>/resource/js/pagination.js"></script>
</head>
<body>
	<main>
		<div class="container-fluid benner d-xs-none">
			<div class="bg"></div>
			<div class="title">
				<h1>고객센터<small>${category.title}</small></h1>
				<p>${category.content}</p>
			</div>
		</div>
		<div class="container section">
			<div class="listwrap">
				<table style="width:100%">
					<colgroup class="row">
						<col class="col-md-1">
						<col class="col-md-7">
						<col class="col-md-2">
						<col class="col-md-2">
					</colgroup>
					<thead>
					<tr>
						<th>No</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
					</thead>
					<c:forEach items="${notices}" var="notice">
						<tr>
							<td>${notice.no}</td>
							<td><a href="/notice/idx-${notice.no}">${notice.title}</a></td>
							<td>${notice.author}</td>
							<td>${notice.createdat}</td>
						</tr>
					</c:forEach>
				</table>
				<div id="paginationBox">
					<ul class="pagination">
						<c:if test="${pagination.prev}">
							<li class="page-item">
								<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
							</li>
						</c:if>
						<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
							<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
								<a class="page-link" href="#" onClick="fn_pagination('${idx}')"> ${idx} </a>
							</li>
						</c:forEach>
						<c:if test="${pagination.next}">
							<li class="page-item">
								<a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a>
							</li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</main>
</body>
</html>
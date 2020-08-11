<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>블랙핑크 :: <%=request.getParameter("title") %>
</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- JS -->
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="/blackpink/resources/js/jquery.instagramFeed.js"></script>
</head>
<body>
	<!-- header -->
	<div class="jumbotron text-center mb-0">
		<h1>Black Pink Homepage</h1>
		<p>JYP 엔터테인먼트 소속의 대한민국 4인조 걸그룹! 블랙핑크!</p>
	</div>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<a href="/blackpink/home/main" class="navbar-brand">Black Pink</a>
		<!-- Toggle Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="/blackpink/notice/list" class="nav-link">공지사항</a></li>
				<li class="nav-item"><a href="/blackpink/home/sazin" class="nav-link">갤러리</a></li>
				<li class="nav-item"><a href="/blackpink/chat/main" class="nav-link">커뮤니티</a></li>
				<li class="nav-item"><a href="/blackpink/user/logout" class="nav-link">로그아웃</a></li>
			</ul>
		</div>
	</nav>
			


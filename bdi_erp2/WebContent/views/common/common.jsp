<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
String rPath = request.getContextPath(); // 이프로젝트의 이름을 갖고 올려고
String title = "빅데이터 테스트 프로젝트";
%>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<title><%=title%></title>
	<link rel="stylesheet" href="<%=rPath%>/bs3/css/bootstrap.css">
	<link rel="stylesheet" href="<%=rPath%>/bs3/css/bootstrap-theme.css">
	<link rel="stylesheet" href="<%=rPath%>/bs3/css/simple-sidebar.css"/>
	<script src="<%=rPath%>/bs3/js/jquery-3.3.1.js"></script>
	<script src="<%=rPath%>/bs3/js/bootstrap.js"></script>
</head>
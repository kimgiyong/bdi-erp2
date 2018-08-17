<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<%
Connection con = DBConnection.getCon();
String sql = "select uiName,uiId,uiPwd,uiDesc,uiAge,diNo from user_info";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
DBConnection.close();
%>
<body>
<div class="container">
	<table class="table table-bordered table-hover">
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>유저설명</th>
			<th>나이</th>
			<th>diNo</th>
		</tr>
		<%
		
		%>
	</table>
</div>
</body>
</html>
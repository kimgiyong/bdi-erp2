<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<%
Connection con = DBConnection.getCon();
String sql = "select tNo,tId,tBirth,tContent from Test";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
DBConnection.close();
%>
<div class="container">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Number</th>
					<th>ID</th>
					<th>Birth</th>
					<th>etc</th>
				</tr>
			</thead>
			<tbody>
			<%
			while(rs.next()){
			%>
				<tr>
					<td><a href="<%=rPath%>/views/testinfo/testView.jsp?tNo=<%=rs.getString("tNo")%>"><%=rs.getString("tNo")%></a></td>
					<td><%=rs.getString("tId")%></td>
					<td><%=rs.getString("tBirth")%></td>
					<td><%=rs.getString("tContent")%></td>
				</tr>
			<%
			}
			%>
			</tbody>
		</table>
</div>
</body>
</html>
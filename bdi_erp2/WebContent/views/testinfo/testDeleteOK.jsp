<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<%
String tNo = request.getParameter("tNo");

Connection con = DBConnection.getCon();
String sql = "delete from Test where tNo = ?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,tNo);
int cnt = ps.executeUpdate();
if(cnt==1){
%>
<script>
	alert("정보가 삭제되었습니다.");
	location.href="<%=rPath%>/views/testinfo/testList.jsp";
</script>
<%
}
%>
</body>
</html>
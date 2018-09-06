<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<%
int uiNo = Integer.parseInt(request.getParameter("uiNo"));

Connection con = DBConnection.getCon();
String sql = "delete from user_info where uiNo = ?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1,uiNo);
int cnt = ps.executeUpdate();
DBConnection.close();
if(cnt==1){
%>
<script>
	alert("정보가 삭제되었습니다.");
</script>
더이상 남아있는 정보는 없어...
<%
}
%>
</body>
</html>
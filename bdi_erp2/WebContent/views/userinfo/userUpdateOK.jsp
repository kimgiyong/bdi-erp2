<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<script>
var pwd = prompt("원래 비밀번호를 입력하시오.","");
if(pwd!=<%=request.getParameter("uiPwd")%>){
	alert("비밀번호가 맞지 않습니다. 수정이 취소됩니다.");
	location.href="<%=rPath%>/views/userinfo/userList.jsp";
}
</script>
<%
String uiNo = request.getParameter("uiNo");
String uiName = request.getParameter("uiName");
String uiId = request.getParameter("uiId");
String uiPwd = request.getParameter("uiPwd");
String uiDesc = request.getParameter("uiDesc");
String uiAge = request.getParameter("uiAge");
String diNo = request.getParameter("diNo");

Connection con = DBConnection.getCon();
String sql = "update user_info set uiName = ?, uiId = ?,";
sql += " uiPwd = ?, uiDesc = ?, uiAge = ?, diNo = ? where uiNo = ?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,uiName);
ps.setString(2,uiId);
ps.setString(3,uiPwd);
ps.setString(4,uiDesc);
ps.setString(5,uiAge);
ps.setString(6,diNo);
ps.setString(7,uiNo);
int cnt = ps.executeUpdate();
if(cnt==1){
%>
<script>
	alert("정보 수정이 완료되었습니다.");
	location.href="<%=rPath%>/views/userinfo/userList.jsp";
</script>
<%
}
%>
</body>
</html>
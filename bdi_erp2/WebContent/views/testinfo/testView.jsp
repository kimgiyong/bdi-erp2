<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<%
String tNo = request.getParameter("tNo");
String tId = "";
String tBirth = "";
String tContent = "";

Connection con = DBConnection.getCon();
String sql = "select tId,tBirth,tContent from Test where tNo = ?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, tNo);
ResultSet rs = ps.executeQuery();
DBConnection.close();
if(rs.next()){
	tId = rs.getString("tId");
	tBirth = rs.getString("tBirth");
	tContent = rs.getString("tContent");
}
tBirth = tBirth.substring(0, 4) + "-" + tBirth.substring(4, 6) + "-" + tBirth.substring(6);
System.out.println(tBirth);
%>
<div class="container">
	<form action="<%=rPath%>/views/testinfo/testUpdateOK.jsp" onsubmit="return check()">
		<table class="table table-bordered table">
		<fieldset>
		<legend>테스트정보입력</legend>
		<tr>
				<th>Number</th>
				<td><%=tNo%></td>
			</tr>
			<tr>
				<th>ID</th>
				<td><input type="text" name="tId" value="<%=tId%>">
			</tr>
			<tr>
				<th>PASSWORD</th>
				<td><input type="password" name="tPwd">
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="date" name="tBirth" value="<%=tBirth%>">
			</tr>
			<tr>
				<th>그 외 정보</th>
				<td><textarea name="tContent"><%=tContent%></textarea>
			</tr>
			<tr>
				<td align="center" colspan="2"><button>수정</button><button type="button" onclick="deleteTest()">삭제</button></td>
			</tr>
		</fieldset>
		</table>
		<input type="hidden" name="tNo" value="<%=tNo%>">
	</form>
<script>
	function check(){
		var ch = document.querySelectorAll('input');
		var tt = document.querySelector('textarea');
		for(var a=0;a<ch.length;a++){
			if(ch[a].type!="date"){
				if(ch[a].value.length<1 || ch[a].value.length>100){
					alert(ch[a].name + "의 값을 확인해주세요");
					ch[a].focus();
					return false;
				}else{
					if(tt.value.length>20000){
						alert(ch[a].name + "가 너무 깁니다.");
						ch[a].focus();	
						return false;
					}
				}
			}
		}
		return true;
	}
	function deleteTest(){
		if(confirm("삭제하시겠습니까?")){
			location.href="<%=rPath%>/views/testinfo/testDeleteOK.jsp?tNo=<%=tNo%>";
		}
	}
</script>
</div>
</body>
</html>
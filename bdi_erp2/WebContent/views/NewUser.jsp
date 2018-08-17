<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String password = request.getParameter("password");
String email = request.getParameter("email");
%>
<body>
<form>
	이름 : <input type="text" name="name"><br>
	ID : <input type="text" name="id"><br>
	Password : <input type="password" name="password"><br>
	Email : <input type="email" name="email"><br>
	전화번호(-없이) : <input type="text" name="number"><br>
	성별 : 남자<input type="radio" name="gender" value="남자">
		여자<input type="radio" name="gender" value="여자"><br><br>
	<button>회원가입</button>
</form>
</body>
</html>
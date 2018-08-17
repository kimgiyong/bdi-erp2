<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<%
String age = request.getParameter("age");
String name = request.getParameter("name");
String[] wishs = request.getParameterValues("hobby");
if(age!=null){
	out.println(name + "님이전송한 나이는 " + age + "입니다.<br>");
	int s = Integer.parseInt(age);
	if(s>50){
		out.println("50살 이상!");
	}else if(s>40){
		out.println("40대시네요");
	}else if(s>30){
		out.println("30대시네요");
	}else if(s>20){
		out.println("20대시네요");
	}else if(s>10){
		out.println("10대아이들이시네요");
	}else{
		out.println("애들이네요");
	}out.println("<br>취미는  ");
	for(String wish : wishs){
		out.println(wish);
	}out.println("입니다.");
}
%>
<body>
<form>
	나이 : <input type="text" name="age"><br>
	이름 : <input type="text" name="name"><br>
	취미 : 영화<input type="checkbox" name="hobby" value="영화">
	음악감상<input type="checkbox" name="hobby" value="음악감상">
	게임<input type="checkbox" name="hobby" value="게임">
	<button>전송</button>
</form>
</body>
</html>
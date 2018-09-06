<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<div class="container">
	<form action="<%=rPath%>/views/testinfo/testInsertOK.jsp" onsubmit="return check()">
		<table class="table table-bordered table">
		<fieldset>
		<legend>테스트정보입력</legend>
			<tr>
				<th>ID</th>
				<td><input type="text" name="tId">
			</tr>
			<tr>
				<th>PASSWORD</th>
				<td><input type="password" name="tPwd">
			</tr>
			<tr>
				<th>생일</th>
				<td><input type="date" name="tBirth" required>
			</tr>
			<tr>
				<th>그 외 정보</th>
				<td><textarea name="tContent"></textarea>
			</tr>
			<tr>
				<td align="center" colspan="2"><button>전송</button></td>
			</tr>
		</fieldset>
		</table>
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
</script>
</div>
</body>
</html>
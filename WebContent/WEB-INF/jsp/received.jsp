<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ page import="by.bsu.extask.to.ReceiveList"%>
	<%@ page import="by.bsu.extask.to.ReceiveData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Результаты</title>

<style>
 .brd {
    padding: 10px; /* Поля вокруг текста */
    margin-left: 100px;
    margin-right: 100px;
    margin-top: 130px;
   }
</style>
</head>

<body bgcolor="#F8F8FF">
<div class ="brd">
<%
ReceiveList users = (ReceiveList)request.getAttribute("userList");
for(ReceiveData user : users.userList){
%>
<table bgcolor="#C0DCC0" bordercolor="#2d2b50" width="100%" border="1" cellspacing="0" cellpadding="4">
<tr>
<td width="239"><%=user.name%></td>
<td width="239"><%=user.surname%></td>
</tr>
	
<%
}
%>			
</table>
<form name="log-out" method="post" action="mmm">
	<input type="hidden" name="command"  value="logout" />
	<input type="submit" style="margin: 20px 110px;" value="Выход"/>
	</form>
</div>
</body>
</html>
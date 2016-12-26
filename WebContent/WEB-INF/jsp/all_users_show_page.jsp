<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="by.bsu.extask.to.UserList"%>
<%@ page import="by.bsu.extask.to.TestData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Проверка</title>
<style>
 .brd {
    padding: 10px; /* Поля вокруг текста */
    margin-left: 100px;
    margin-right: 100px;
    margin-top: 20px;
   }
</style>
</head>
<body bgcolor="#F8F8FF">
<div class ="brd">
<form name="Show-form" method="post" action="mmm">
<input type="hidden" name="command" value="result"/>
Оценка  <input type="text" name="rez" value="" style="margin-bottom:20px; width:200px;">
<table bgcolor="#C0DCC0" bordercolor="#2d2b50" width="100%" border="1" cellspacing="0" cellpadding="4">
<colgroup>
<%
UserList users = (UserList)request.getAttribute("userList");
int i=0;
for(TestData user : users.userList){
%>
<tr>
<td><%=user.name%></td>
<td><%=user.surname%></td>
<td><%=user.one%></td>
<td><%=user.two%></td>
<td><%=user.three%></td>
<td><%=user.four%></td>
<td><%=user.five%></td>
<td><%=user.rezult%></td>
<td> <input type="hidden" name = "clickbutton" value="click <%= user.id_student %><%= user.id_subject %>"/>
<input type="submit" value="Оценка"/>
</td>
</tr>
<%
i++;}
%>
<colgroup>
<col width="64*" /> <col width="64*" /> <col width="64*" /> <col width="64*" />
</colgroup>

</table>
</form>
<form name="log-out" method="post" style="margin-top:10px;" action="mmm">
	<input type="hidden" name="command" value="logout" />
	<input type="submit" value="Выход"/>
	</form>
</div>
</body>
</html>
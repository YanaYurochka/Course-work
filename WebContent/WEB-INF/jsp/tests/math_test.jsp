<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Психиатрия</title>
<style>
 .brd {
    background: #C0DCC0; /* Цвет фона */
    padding: 10px; /* Поля вокруг текста */
    margin-left: 100px;
    margin-right: 100px;
    margin-top: 20px;
   }
</style>
</head>

<body bgcolor="#F8F8FF">
<div class ="brd">
<p> Больной спокойно беседовал с врачом в присутствии жены, затем, когда остался с ним в кабинете наедине, 
неожиданно взял тяжелый письменный прибор и ударил врача по голове. Когда врачи стали выяснять
причину его странного поведения, он сообщил следующее: несколько лет назад этот врач во 
время проверки личных вещей изъял у него спички, как предмет опасный в больнице. Больного 
это обидело, постоянно помнил об этом и искал случая отомстить.</p>
<%
int id = (Integer)request.getAttribute("id");
%>
<form name = "save_test1" method="post" action="mmm">

<p><b>1) Для какого заболевания характерно такое поведение</b><Br>
<input type="text" name="One" value=""/><br/>
  </p>
  <p><b>2) Необходимо, ли проводить судебно-психиатрическую экспертизу?</b><Br>
<input type="text" name="Two" value=""/><br/>
  </p>
  <p><b>3) Какой психолептик необходимо приминить больному?</b><Br>
<input type="text" name="Three" value=""/><br/>
  </p>
  <p><b>4) Какие назначения будут адекватны состоянию больного?</b><Br>
<input type="text" name="Four" value=""/><br/>
  </p>
  <p><b>5) Примерное время личения, стационар или временное содержание?</b><Br>
<input type="text" name="Five" value=""/><br/>
  </p>
<input type="hidden" name="command" value="save_test1" />

<input type="hidden" name="id" value="<%= id %>" />
<input type="submit" value="Сдать тест"/>
</form>


</div>
</body>
</html>
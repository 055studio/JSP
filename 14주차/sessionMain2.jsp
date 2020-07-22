<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String id ="";//if문안으로 들어가지 않으면 id값을 받아 올수  없기 때문에 미리 정의
  try{
	  id = (String)session.getAttribute("id");
	  if(id==null || id.equals(""))//값이 없다면 로그인 폼으로
		  response.sendRedirect("sessionLoginForm2.jsp");
		  else{
			  %>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>세션을 이용한 로그인</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
  반갑습니다! <%=id %>님이 로그인하셨습니다<br>
  <form method ="post" action = "sessionLogout2.jsp">
   <input class="btn btn-primary" type = "button" onclick ="location.href='sessionLogout2.jsp'" value ="로그아웃">
  </form>
</body>
</html>
<%}
}catch(Exception e){
 e.printStackTrace();	
}
%>
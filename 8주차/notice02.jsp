<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판 내용</title>
</head>
<body>
  <jsp:useBean id="m" class="ch10.NoticeBoard"></jsp:useBean>
	<jsp:setProperty property="*" name="m"/>
	<table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr>
      <td align="center">내 용</td>
     </tr>
    </table>
   <table width="413">
     <tr>
      <td align="center" width="76">이름</td>
      <td><jsp:getProperty property="name" name="m"/></td>
      <td width="319"></td>
     </tr>
	 <tr height="1" bgcolor="#00ffff"><td colspan="2" width="407"></td></tr>
    <tr>
      <td align="center" width="76">제목</td>
      <td><jsp:getProperty property="title" name="m"/></td>
      <td width="319"></td>
     </tr>
	 <tr height="1" bgcolor="#00ffff"><td colspan="2" width="407"></td></tr>
    <tr>
      <td align="center" width="76">이메일</td>
      <td><jsp:getProperty property="email" name="m"/></td>
      <td width="319"></td>
     </tr>
     <tr height="1" bgcolor="#00ffff"><td colspan="2" width="407"></td></tr>
    <tr>
      <td align="center" width="76">내용</td>
      <td><jsp:getProperty property="memo" name="m"/></td>
      <td width="319"></td>
     </tr>
      <tr height="1" bgcolor="#00ffff"><td colspan="2" width="407"></td></tr>
    <tr>
      <td align="center" width="76">비밀번호</td>
      <td><jsp:getProperty property="password" name="m"/></td>
      <td width="319"></td>
     </tr>
     <tr height="1" bgcolor="#00ffff"><td colspan="2" width="407"></td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</body>
</html>

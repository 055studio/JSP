<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Notice Board</title>
</head>
<body>
<form action="notice02.jsp" method="post">
	<table border="3">
  <tr style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
   <td>
    <table  width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="repeat-x; text-align:left; font-size:30px; border-left:0;border-right:0;border-bottom:0;border-top:0;">
      <td>글쓰기</td>
     </tr>
    </table>
   <table border="1" cellpadding="10" style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
   	 <tr style=" text-align:right; border-left:0;border-right:0;border-bottom:0;border-top:0;" >
   	 	<td colspan="2" style="color:#00ffff;">글목록</td>
   	 </tr>
     <tr style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
      <td align="center">이름</td>
      <td><input name="name" size="25" maxlength="50"></td>
     </tr>
    <tr style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
      <td align="center">제목</td>
      <td><input name="title" size="25" maxlength="50"></td>
     </tr>
    <tr style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
      <td align="center">이메일</td>
      <td><input name="email" size="25" maxlength="50"></td>
     </tr>
     <tr style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
      <td align="center">내용</td>
      <td><textarea name="memo" cols="50" rows="13" ></textarea></td>
     </tr>
     <tr style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
      <td>비밀번호</td>
      <td><input type="password" name="password" size="25" maxlength="50"></td>
     </tr>
     <tr align="center" style="border-left:0;border-right:0;border-bottom:0;border-top:0;">
      <td colspan="2"><input type="submit" name="name"value="글쓰기">
       <input type="reset" value="다시작성">
       <input type="button" value="목록보기">
     </tr>
    </table>
    </td>
    </tr>
 </table>
 </form>
</body>
</html>

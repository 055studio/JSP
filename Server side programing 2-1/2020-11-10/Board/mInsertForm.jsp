<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<style>
 form-center {
 display:flex;
  align-items:center;
  }
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}


/* follow me template */
.made-with-love {
  margin-top: 40px;
  padding: 10px;
  clear: left;
  text-align: center;
  font-size: 10px;
  font-family: arial;
  color: #fff;
}
.made-with-love i {
  font-style: normal;
  color: #F50057;
  font-size: 14px;
  position: relative;
  top: 2px;
}
.made-with-love a {
  color: #fff;
  text-decoration: none;
}
.made-with-love a:hover {
  text-decoration: underline;
}

textarea {
    /* To properly align multiline text fields with their labels */
    vertical-align: top;

    /* To give enough room to type some text */
    width : 100%;
    height: 20em;

    /* To allow users to resize any textarea vertically
       It does not work on every browsers */
    resize: vertical;
    border: 3px solid white;
}
</style>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <title>게시글 작성창</title>
</head>
<body>
<section>
  <!--for demo wrap-->
  <h1>게시글 작성</h1>
  <div class="container">
   <form method="post" action="insert.do" class="form-horizontal">
      
         <div class="form-group">
            <div>
               <input type="password" name ="pwd" class="form-control" placeholder="title">
            </div>
         </div>
         <div class="form-group">
            <div>
                 <textarea id="msg" placeholder="content"></textarea>
            </div>
         </div>
      	 <div class="container" style="display: inline-block;text-align: center;">
         <input type="submit" class="btn btn-susses"  value="작성하기">
         <input type="reset" class="btn btn-susses" value="다시입력">
         <input type="button" class="btn btn-susses"  value="홈으로" onclick="location.href='index.html'">
         <br><br>
         </div>
   </form>
</div>
</section>
</body>
</html>
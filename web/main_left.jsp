<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统</title>
</head>

<jsp:include page="isLogin.jsp"></jsp:include>

  <body>

      <a>图书管理:</a><br>
      <center>
      <a href="addBook.jsp" target="main_right">添加图书信息</a><br>
      <a href="displayBook.jsp" target="main_right">查看图书信息</a><br>
      <a href="modifyBook.jsp" target="main_right">修改图书信息</a><br>
      <a href="deleteBook.jsp" target="main_right">删图图书信息</a><br>
      </center>
      <a>读者类别管理:</a><br>
      <center>
      <a href="addReaderType.jsp" target="main_right">添加读者类别</a><br>
      <a href="displayReaderType.jsp" target="main_right">查看读者类别</a><br>
      <a href="modifyReaderType.jsp" target="main_right">修改读者类别</a><br>
      <a href="deleteReaderType.jsp" target="main_right">删除读者类别</a><br>
      </center>
      <a>读者管理:</a><br>
      <center>
      <a href="addReader.jsp" target="main_right">添加读者信息</a><br>
      <a href="displayReader.jsp" target="main_right">查看读者信息</a><br>
      <a href="modifyReader.jsp" target="main_right">修改读者信息</a><br>
      <a href="deleteReader.jsp" target="main_right">删除读者信息</a><br>
      </center>
      <a>借阅管理:</a><br>
      <center>
      <a href="borrowBook.jsp" target="main_right">借书</a><br>
      <a href="returnBook.jsp" target="main_right">还书</a><br>
      <a href="displayBorrow.jsp" target="main_right">借阅信息</a><br><br>
      <a href="exit.jsp" target="_top"><font color="red">退出</font></a><br>
      </center>
  </body>
</html>

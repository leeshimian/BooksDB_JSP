<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统</title>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
%>
    <jsp:useBean id="book" class="com.books.model.Book"></jsp:useBean>
    <jsp:setProperty property="*" name="book"/>
    <jsp:useBean id="bookSer" class="com.books.service.bookService"></jsp:useBean>

    <%
        out.print(book.getbkID());
    %>
   <%
   if(bookSer.updateBook(book))
   out.print("修改成功！");
   else
   out.print("修改失败！");
    %>
  </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.books.model.Book" %>

<html>
  <head>
    <title>图书管理系统</title>
  </head>
  
  <body>
	  <%
		  request.setCharacterEncoding("utf-8");
	  %>
	   <jsp:useBean id="bookSer" class="com.books.service.bookService"></jsp:useBean>
			<%
			String bkID = request.getParameter("bkID");
			Book book = bookSer.queryBookbybkID(bkID);
			out.println(book.getbkID());
			if(bookSer.deleteBook(bkID))
				out.print("删除成功！");
			else
				out.print("删除失败！");
		%>
	
  </body>
</html>

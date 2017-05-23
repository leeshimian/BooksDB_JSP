<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>图书管理系统</title>
</head>

<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="Book" class="com.books.model.Book"></jsp:useBean>
	<jsp:setProperty property="*" name="Book" />
	<jsp:useBean id="bookSer" class="com.books.service.bookService"></jsp:useBean>

	<%
		out.print(Book.getbkID());
	%>
	<%
		if (bookSer.addBook(Book))
			out.print("添加成功");
		else
			out.print("添加失败");
	%>

</body>
</html>

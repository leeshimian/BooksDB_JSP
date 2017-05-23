<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.books.model.Reader" %>

<html>
<head>
    <title>图书管理系统</title>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="readerSer" class="com.books.service.readerService"></jsp:useBean>
<%
    String rdID = request.getParameter("rdID");
    Reader reader = readerSer.queryReaderbyrdID(rdID);
    out.println(reader.getrdID());
    if(readerSer.deleteReader(rdID))
        out.print("删除成功！");
    else
        out.print("删除失败！");
%>

</body>
</html>
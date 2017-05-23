<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.books.model.ReaderType" %>

<html>
<head>
    <title>图书管理系统</title>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="readerTypeSer" class="com.books.service.readerTypeService"></jsp:useBean>
<%
    int rdType = Integer.parseInt(request.getParameter("rdType"));
    ReaderType readerType = readerTypeSer.queryReaderTypebyrdType(rdType);
    out.println(readerType.getrdType());
    if(readerTypeSer.deleteReaderType(rdType))
        out.print("删除成功！");
    else
        out.print("删除失败！");
%>

</body>
</html>
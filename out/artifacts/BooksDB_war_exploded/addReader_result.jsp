<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统</title>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="reader" class="com.books.model.Reader"></jsp:useBean>
<jsp:setProperty property="*" name="reader" />
<jsp:useBean id="readerSer" class="com.books.service.readerService"></jsp:useBean>

<%
    out.print(reader.getrdID());
%>
<%
    if (readerSer.addReader(reader))
        out.print("添加成功");
    else
        out.print("添加失败");
%>

</body>
</html>

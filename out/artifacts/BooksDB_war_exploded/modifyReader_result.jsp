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
<jsp:setProperty property="*" name="reader"/>
<jsp:useBean id="readerSer" class="com.books.service.readerService"></jsp:useBean>

<%
    out.print(reader.getrdID());
%>
<%
    if(readerSer.updateReader(reader))
        out.print("修改成功！");
    else
        out.print("修改失败！");
%>
</body>
</html>

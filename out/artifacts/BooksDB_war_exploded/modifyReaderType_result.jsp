<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统</title>
</head>

<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="readerType" class="com.books.model.ReaderType"></jsp:useBean>
<jsp:setProperty property="*" name="readerType"/>
<jsp:useBean id="readerTypeSer" class="com.books.service.readerTypeService"></jsp:useBean>

<%
    out.print(readerType.getrdType());
%>
<%
    if(readerTypeSer.updateReaderType(readerType))
        out.print("修改成功！");
    else
        out.print("修改失败！");
%>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/21 0021
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传文件</title>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
</head>
<body>
<form action="doupload.jsp" method="post" enctype="multipart/form-data">
    <input type="file" name="file"/><br/>
    <input type="text" name="username"><br/>
    <input type="password" name="password"><br/>
    <textarea id="newscontent" name="newscontent" class="ckeditor"></textarea>
    <input type="submit" value="提交">
</form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/14 0014
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<center>
    <h1>请输入你添加的详细信息</h1>
    <form action="doadd.jsp">

        <table  border="1px" width="400px">
            <tr>
                <td>公司编号</td>
                <td><input type="text" name="cid"></td>
            </tr>
            <tr>
                <td>职位名</td>
                <td><input type="text" name="zwName"></td>
            </tr>

            <tr>
                <td>公司名</td>
                <td><input type="text" name="cname"></td>
            </tr>

            <tr>
                <td>工作地点</td>
                <td><input type="text" name="cplace"></td>
            </tr>

            <tr>
                <td>公司性质</td>
                <td><input type="text" name="cxz"></td>
            </tr>

            <tr>
                <td>公司规模</td>
                <td><input type="text" name="cgm"></td>
            </tr>
            <tr>
                <td>产业</td>
                <td><input type="text" name="ccy"></td>
            </tr>
            <tr>
                <td>最低薪资</td>
                <td><input type="text" name="lsalary"></td>
            </tr>
            <tr>
                <td>最高薪资</td>
                <td><input type="text" name="hsalary"></td>
            </tr>
            <tr>
                <td><input type="reset" value="重置"></td>
                <td><input type="submit" value="提交"></td>
            </tr>

</center>







    </table>



</form>


</body>
</html>

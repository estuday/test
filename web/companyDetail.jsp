<%@ page import="com.project.service.imp.CompanyServiceImpl" %>
<%@ page import="com.project.dao.ICompanyDao" %>
<%@ page import="com.project.service.ICompanyService" %>
<%@ page import="com.project.model.Company" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/13 0013
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公司详情</title>
    <%
        String cid = request.getParameter("cid");
        int id = Integer.parseInt(cid);
        ICompanyService companyService = new CompanyServiceImpl();
        Company company = companyService.foundBycid(id);
    %>
</head>
<body>
    <center>
        <table border="1px">
           <tr>
               <td>公司编号</td>
               <td><%=company.getCid()%></td>
           </tr>
            <tr>
                <td>职位名</td>
                <td><%=company.getZwName()%></td>
            <tr>
                <td>公司名</td>
                <td><%=company.getcName()%></td>
            </tr>
            <tr>
                <td>工作地点</td>
                <td><%=company.getCplace()%></td>
            </tr>
            <tr>
                <td>产业</td>
                <td><%=company.getCcy()%></td>
            </tr>
            <tr>
                <td>公司名</td>
                <td><%=company.getcName()%></td>
            </tr>
            <tr>
                <td>最低薪资</td>
                <td><%=company.getLsalary()%></td>
            </tr>

            <tr>
                <td>最低薪资</td>
                <td><%=company.getHsalary()%></td>
            </tr>
        </table>

    </center>


</body>
</html>

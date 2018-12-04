<%@ page import="com.project.dao.ICompanyDao" %>
<%@ page import="com.project.dao.imp.CompanyDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.project.model.Company" %>
<%@ page import="com.project.service.ICompanyService" %>
<%@ page import="com.project.service.imp.CompanyServiceImpl" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/13 0013
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据展示</title>
    <%
        ICompanyService companyService = new CompanyServiceImpl();

        String index = request.getParameter("pageIndex");
        String index1 = request.getParameter("index");
        Integer pageIndex;
        if(index1==null) {
            if (index == null) {
                pageIndex = 1;
            } else {
                pageIndex = Integer.parseInt(index);
            }
        }else {
            pageIndex=Integer.parseInt(index1.trim());
        }


        Integer pageSize=10;
        List<Company> list = companyService.getPages(pageIndex, pageSize);
        int count=companyService.getCount();
        int pageCount =count%pageSize==0?count/pageSize:count/pageSize+1;

    %>
    <style>
        .top{
            text-align: center;
            font-weight: 900;
        }
    </style>
</head>
<center><h1>公司信息表</h1></center>
<body>
    <table border="1px" width="100%" >
        <tr class="top">
            <td >公司编号</td>
            <td>职位名</td>
            <td>公司名</td>
            <td>工作地点</td>
            <td>其他功能</td>

        </tr>
        <%
            for(int i =0;i<list.size();i++){
              %>
            <tr>
                <td><%=list.get(i).getCid()%></td>
                <td><%=list.get(i).getZwName()%></td>
                <td><%=list.get(i).getcName()%></td>
                <td><%=list.get(i).getCplace()%></td>
                <td><a href="add.jsp">增加</a>  |  <a href="updat.jsp">修改</a> | <a href="delete.jsp?cid=<%=list.get(i).getCid()%>">删除</a>  |
                    <a href="companyDetail.jsp?cid=<%=list.get(i).getCid()%>">详细信息</a> </td>
            </tr>

          <%  }
        %>
        <c:forEach items="${list}" var="list" >
                 <tr>
                     <td>${list.Cid}</td>
                     <td>${list.ZwName}</td>
                     <td>${list.cName}</td>
                     <td>${list.Cplace}</td>
                     <td><a href="add.jsp">增加</a>  |  <a href="updat.jsp">修改</a> | <a href="delete.jsp?cid=${list.Cid}">删除</a>  |
                         <a href="companyDetail.jsp?cid=${list.Cid}">详细信息</a> </td>
                 </tr>

        </c:forEach>

    </table>

<%--<center><jsp:include page="test.jsp"></jsp:include></center>
<iframe src="http://baidu.com"/>--%>
<center>共有<%=count%>条记录 <%=pageIndex%>/<%=pageCount%>页
    <a href="CompanyList.jsp?pageIndex=1">首页</a>
    <%
        if(pageIndex>1){
            %>

               <a href="CompanyList.jsp?pageIndex=<%=pageIndex-1%>">上一页</a>
    <%
        }
    %>
    <%
        if(pageIndex<pageCount){
            %>
    <a href="CompanyList.jsp?pageIndex=<%=pageIndex+1%>">下一页</a>
    <%
        }
    %>

    <a href="CompanyList.jsp?pageIndex=<%=pageCount%>">最后一页</a>
<form action="CompanyList.jsp"  method="post">
    跳转<input type="text" name="index">
    <input type="submit" value="GO">
</form>
</center>
</body>
</html>

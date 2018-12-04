<%@ page import="com.project.service.imp.CompanyServiceImpl" %>
<%@ page import="com.project.dao.ICompanyDao" %>
<%@ page import="com.project.service.ICompanyService" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/13 0013
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取参数
    String cid = request.getParameter("cid");
    int id = Integer.parseInt(cid);
    ICompanyService companyService = new CompanyServiceImpl();
    companyService.deleteByCid(id);
    response.sendRedirect("CompanyList.jsp");

%>
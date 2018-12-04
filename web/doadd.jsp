<%@ page import="com.project.model.Company" %>
<%@ page import="com.project.service.imp.CompanyServiceImpl" %>
<%@ page import="com.project.service.ICompanyService" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/14 0014
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String cid = request.getParameter("cid");
    int id = Integer.parseInt(cid);
    String zwName = request.getParameter("zwName");
    String cname = request.getParameter("cname");
    String place= request.getParameter("cplace");
    String cxz = request.getParameter("cxz");
    String cgm=request.getParameter("cgm");
    String ccy= request.getParameter("ccy");
    String lsalary = request.getParameter("lsalary");
    double lsal = Double.parseDouble(lsalary);
    String hsalary = request.getParameter("hsalary");
    double hlsal = Double.parseDouble(hsalary);

    Company  company = new Company(id,zwName,cname,place,cxz,cgm,ccy,lsal,hlsal);
    ICompanyService  companyService= new CompanyServiceImpl();
    companyService.add(company);
    response.sendRedirect("CompanyList.jsp");



%>
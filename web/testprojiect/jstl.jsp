<%@ page import="com.testproject.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/27/027
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<>
<head>
    <title>Title</title>
</head>

=============out===========<br />
<c:out value="123"></c:out><br />
<c:out value="${1+1}"></c:out><br />
<%Person person=new Person(1,"xiang");
    request.setAttribute("person",person);
%>
<c:out value="${person}"></c:out><br />
<c:out value="${abc}" default="abc not found"></c:out>
<br />

<c:out value="<a href=‘http://www.4399.com’>点我玩游戏</a>" escapeXml=""></c:out>

=============set==============<br />
<c:set var="num" value="250" scope="session"></c:set>
${num}
<br />
<c:set target="${person}" property="name" value="小王"></c:set>
${person}
=============foreach==============<br />
<c:forEach begin="1" end="10"  step="1" var="i" >${i}</c:forEach>
 <% List<String> heroList = new ArrayList<String>();
      heroList.add("1");
     heroList.add("2");
     heroList.add("3");
     heroList.add("4");
     heroList.add("5");
     request.setAttribute("heroList",heroList);
 %>
<c:forEach items="${heroList}" var="hero" varStatus="status">
 ${hero}<br />
    ${status.index}
</c:forEach>

<!--表格隔行变色-->
<table border="1">
    <c:forEach items="${heroList}" var="hero" varStatus="status">
        <tr bgcolor="${status.index % 2 == 0 ? 'red':'yellow'}">
            <td>${hero}</td>
        </tr>
    </c:forEach>
</table>

<!--九九乘法表-->
<c:forEach var="i" begin="1" end="9">
    <c:forEach var="j" begin="1" end="${i}">
        ${i} * ${j} = ${i*j}&nbsp;&nbsp;&nbsp;&nbsp;
    </c:forEach>
    <br />
</c:forEach>

=================if标签========================<br />
<c:if test="${2>1}">
    <c:out value="hey"></c:out>
</c:if>
<br />
<c:if test="${1<2}" var="result" scope="session"></c:if>
${result}<br />

===============choose标签========================<br />
<c:set var="pm" value="99"></c:set>
<c:choose >
    <c:when test="${pm>101}">
        <c:out value="空气质量良"></c:out>
    </c:when>
    <c:otherwise>
    <c:out value="空气质量 优"></c:out>
    </c:otherwise>
</c:choose>


==============url标签===========================<br />
<c:url value="http://www.4399.com" var="4399"></c:url>
<a href="${4399}"  >点我玩游戏</a>


==============param标签=========================<br />
${param.name}
<br />


=============import标签=====================<br />
<%--<c:import url="http://www.baidu.com"></c:import>--%>




==================fmt date===================<br />

<fmt:formatDate value="<%= new Date()%>" dateStyle="short" /><br />
<fmt:formatDate value="<%= new Date()%>" dateStyle="long" /><br />
<fmt:formatDate value="<%= new Date()%>" pattern="yyyy-MM-dd HH:mm:ss" /><br />
<fmt:formatDate value="<%= new Date()%>" pattern="yyyy-MM-dd" /><br />

================fmt num========================<br />
<fmt:formatNumber value="5000" ></fmt:formatNumber>
<fmt:formatNumber value="5000" type="currency"></fmt:formatNumber>
<fmt:formatNumber  value="5000"  type="percent"></fmt:formatNumber>

<body>


</body>
</html>

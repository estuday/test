<%@ page import="java.beans.PersistenceDelegate" %>
<%@ page import="com.testproject.Person" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/26/026
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    Person person=new Person(1,"小王");
    request.setAttribute("myPerson",person);
    ArrayList<Person> arr = new ArrayList<Person>();
    Person person1 = new Person(2, "老王");
    Person person2 = new Person(3, "小张");
    arr.add(person);
    arr.add(person1);
    arr.add(person2);

    pageContext.setAttribute("arr",arr);
    int num1 =10;
    int num2 = 15;
    request.setAttribute("num1",num1);
    request.setAttribute("num2",num2);

    String username= "abc";
    String username2= "abc";
    request.setAttribute("username",username);
    request.setAttribute("username2",username2);
%>


${}


============= 使用el进行运算 ====================
${1+1} <!--- 数字运算--->
<br />
${num1+num2}   <!--变量运算-->
<br />
${username.equals(username2)}   <!--判断字符是否相等-->
<br />
${1<2}     <!--判断-->
<br />
${2>1?"yes":"no"}   <!--三目运算-->
<br />
<input type="text" value=${true?"弟中弟":"哥中哥"}>

<br />
============ 获取对象的值=============
${myPerson.name}
<br />
${arr[0]}
${arr[1].id}
<br />

<%=person.getName()

%>

<body>

</body>
</html>

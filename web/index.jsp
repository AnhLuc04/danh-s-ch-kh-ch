<%@ page import="java.util.Map" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="codegym.customer" %>
<%--Created by IntelliJ IDEA.--%>
<%--User: Admin--%>
<%--Date: 02/06/2020--%>
<%--Time: 11:03 AM--%>
<%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hiển Thị Danh Sách KHách Hàng</title>
</head>
<body>
<h1 class="class-declaration">Danh Sách Khách Hàng</h1>
<%
    List<customer> list = new ArrayList<>();
    list.add(new customer("luc", "o4/03/2001", "thanh hóa", "ca0 1m73"));
    list.add(new customer("luc", "o4/03/2001", "thanh hóa", "ca0 1m73"));
    list.add(new customer("luc", "o4/03/2001", "thanh hóa", "ca0 1m73"));
    list.add(new customer("luc", "o4/03/2001", "thanh hóa", "ca0 1m73"));
%>
<table class="table">
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Quê Quán</th>
        <th>Mô tả</th>
    </tr>
    <% for (int i = 0; i < list.size(); i++) { %>
    <tr>
        <td><%= list.get(i).getName()%></td>
        <td><%=list.get(i).getYear() %></td>
        <td><%=list.get(i).getAddress() %></td>
        <td><%=list.get(i).getDescription() %></td>
    </tr>
    <%}%>
<%--    <c:forEach items="${list}" var="customer">&ndash;%&gt;--%>
<%--        <tr>--%>
<%--            <td>${customer.name}</td>--%>
<%--            <td><c:out value="${customer.getName()}"/></td>--%>
<%--            <td><c:out value="${customer.getId()}"/></td>--%>
<%--            <td><c:out value="${customer.getAddress()}"/></td>--%>
<%--            <td><c:out value="${customer.getDob()}"/></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
</table>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
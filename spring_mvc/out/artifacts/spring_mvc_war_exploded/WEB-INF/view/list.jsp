<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 14/10/2020
  Time: 上午9:14
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    pageContext.setAttribute("ctp",request.getContextPath());
%>
<head>
    <title>员工列表</title>
    <script type="text/javascript" src="${ctp}/script/jquery-1.9.1.min.js"></script>
</head>
<body>

    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <td>ID</td>
            <td>LastName</td>
            <td>Email</td>
            <td>Gender</td>
            <td>Department</td>
            <td>EDIT</td>
            <td>DELETE</td>
        </tr>
        <c:forEach items="${emps}" var="emp">
            <tr>
                <td>${emp.id}</td>
                <td>${emp.lastName}</td>
                <td>${emp.email}</td>
                <td>${emp.gender==0?"女":"男"}</td>
                <td>${emp.department.departmentName}</td>
                <td><a href="${ctp}/emp/${emp.id}">Edit</a></td>
                <td><a href="${ctp}/emp/${emp.id}" class="delBtn" >Delete</a></td>
<%--                <td>--%>
<%--                    <form action="${ctp}/emp/${emp.id}" method="post">--%>
<%--                        <input type="hidden"  name="_method" value="DELETE">--%>
<%--                        <input type="submit" value="删除">--%>
<%--                    </form>--%>
<%--                </td>--%>
            </tr>
        </c:forEach>
    </table>
<a href="toaddpage">添加员工</a>
    <form action="${ctp}/emp/${emp.id}" method="post" id="deleteForm">
    <input type="hidden"  name="_method" value="DELETE">
    <input type="submit" value="删除">
</form>
<script type="text/javascript">
    $(function () {
        $(".delBtn").click(function () {
            if(confirm("是否要删除"+$(this).parent().parent().find("td").eq(1).text()+"该员工")) {
                //1、改变表单的action指向
                $("#deleteForm").attr("action", this.href);
                //2、提交表单
                $("#deleteForm").submit();

            }return false;
        });
    })
</script>
</body>
</html>

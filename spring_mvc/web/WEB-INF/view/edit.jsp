<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 14/10/2020
  Time: 下午4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>员工修改页面</title>
</head>
<body>
<%
    pageContext.setAttribute("ctp",request.getContextPath());
%>
    <form:form action="${ctp}/emp/${employee.id}"  modelAttribute="employee" method="post">
        <input type="hidden"  name="_method" value="put">
        <input type="hidden" name="id" value="${employee.id}">
        email:<form:input path="email"></form:input><br/>
        gender:&nbsp;&nbsp;&nbsp;
        男:<form:radiobutton path="gender" value="1"/>&nbsp;&nbsp;&nbsp;
        女:<form:radiobutton path="gender" value="0"/><br/>
        dept:<form:select path="department.id" items="${depts}" itemValue="id" itemLabel="departmentName"></form:select>
        <br/>
        <input type="submit" value="保存">
    </form:form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 14/10/2020
  Time: 上午8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>员工添加</title>
</head>
<body>
<%--    <form action="">--%>
<%--        lastName:<input type="text" name="lastName">--%>
<%--        emali:<input type="text" name="email">--%>
<%--        gender:<br/>--%>
<%--        男:<input type="radio" name="gender" value="1"><br/>--%>
<%--        女:<input type="radio" name="gender" value="0"><br/>--%>
<%--        dept:--%>
<%--            <select name="deptitem.id">--%>
<%--                <c:forEach items="${depts}" var="deptitem">--%>
<%--                    <!--标签中的是在页面的提示选择信息，value才是真正提交的值-->--%>
<%--                    <option value="${deptitem.id}">${deptitem.departmentName}</option>--%>
<%--                </c:forEach>--%>
<%--            </select>--%>
<%--        <input type="submit" value="提交">--%>
<%--    </form>--%>
<!--通过SpringMVC的表单标签可以实现将模型数据中的属性和HTML表单元素相绑定，
    以实现表单数据更便捷编辑和表单值的回显
        1）SpringMVC认为，表单数据中的每一项都是要回回显的；
        path指定的是一个属性，这个属性是从隐含模型（请求域中取出的某个对象中的属性）
        path指定的每一个属性，请求域中必须有一个对象，拥有这个属性
        这个对象就是请求域中的command；默认是command，可以指定
        modelAttribute=""取对象用的key用modelAttribute指定的值
-->
<%
    pageContext.setAttribute("ctp",request.getContextPath());
%>
<form:form action="${ctp}/emp" modelAttribute="employee" method="post">
    lastName:<form:input path="lastName"></form:input><br/>
    email:<form:input path="email"></form:input><br/>
    gender:<br/>
    男:<form:radiobutton path="gender" value="1"></form:radiobutton><br/>
    女:<form:radiobutton path="gender" value="0"></form:radiobutton><br/>
    <!--
    items指定要遍历的集合，自动遍历，遍历出的每一个元素是一个department对象
    itemLabel指定遍历除的这个对象的哪个属性是作为option标签体的值
    itemValue指定遍历出来的这个对象的哪个属性是作为要提交的值
    -->
    dept:
    <form:select path="department.id" items="${depts}" itemLabel="departmentName" itemValue="id">
    </form:select>
    <input type="submit" value="提交">
</form:form>
</body>
</html>

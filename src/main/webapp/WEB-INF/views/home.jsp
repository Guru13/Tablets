<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<p><a href="${pageContext.request.contextPath}/tablets">Show current tablets</a></p>

<sec:authorize access="!isAuthenticated()">
    <p><a href="<c:url value='/login' />">log in</a></p>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
    <p><a href="<c:url value='/j_spring_security_logout' />">log out</a></p>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
    <p><a href="<c:url value='/admin' />">admin</a></p>
</sec:authorize>

</body>
</html>
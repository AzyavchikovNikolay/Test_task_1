<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">
<center>Azyavchikov Nikolay, MD-JD2-94-22, 2023 year
</center>
</c:if>

<!-- Russian -->

<c:if test="${sessionScope.lang eq 'ru'}">
<center>Азявчиков Николай, MD-JD2-94-22, 2023 год
</center>
</c:if>
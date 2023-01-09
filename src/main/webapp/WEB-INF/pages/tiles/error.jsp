<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">
	Error page. Sorry. Perform the last action again or visit later!
</c:if>

<!-- Russian -->

<c:if test="${sessionScope.lang eq 'en'}">
	Ошибка. Приносим извинения. Выполните заново последенн действие или зайдите позже!
</c:if>


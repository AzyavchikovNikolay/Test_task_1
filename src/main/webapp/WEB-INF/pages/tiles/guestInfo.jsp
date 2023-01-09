<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">
guest info

<div class="body-title">
	<a href="">News >> </a> Latest News
</div>

<form action="command.do?method=delete" method="post">
	<c:forEach var="news" items="${sessionScope.news}">
		<div class="single-news-wrapper">
			<div class="single-news-header-wrapper">
				<div class="news-title">
					<c:out value="${news.title}"/>
				</div>
				<div class="news-date">
					<c:out value="${news.newsDate}"/>
				</div>
				
				<div class="news-content">
					<c:out value="${news.briefNews}"/>
				</div>
			</div>
		</div>
		
	</c:forEach>
	
	<div class="no-news">
		<c:if test="${sessionScope.news eq nule}">
		No news.
		</c:if>
	</div>
	
</form>
</c:if>

<!-- Russian -->

<c:if test="${sessionScope.lang eq 'ru'}">
Информация для гостей

<div class="body-title">
	<a href="">Новости >> </a> Свежие новости
</div>

<form action="command.do?method=delete" method="post">
	<c:forEach var="news" items="${sessionScope.news}">
		<div class="single-news-wrapper">
			<div class="single-news-header-wrapper">
				<div class="news-title">
					<c:out value="${news.title}"/>
				</div>
				<div class="news-date">
					<c:out value="${news.newsDate}"/>
				</div>
				
				<div class="news-content">
					<c:out value="${news.briefNews}"/>
				</div>
			</div>
		</div>
		
	</c:forEach>
	
	<div class="no-news">
		<c:if test="${sessionScope.news eq nule}">
		Новостей нет.
		</c:if>
	</div>
	
</form>
</c:if>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">
<div class="body-title">
	<a href="controller?command=go_to_news_list">News >> </a> News List
</div>

<form action="controller?command=do_delete_selected_news" method="post">
	<c:if test="${sessionScope.role eq 'admin'}">
		<div class="delete2">
			<input type="submit" value="Delete selected news"/>
		</div>
	</c:if>
	<c:forEach var="news" items="${sessionScope.news}">	
		<div class="single-news-wrapper">
			<div class="single-news-header-wrapper">
				<div class="news-title">
					<c:out value="${news.title}" />
				</div>
				<div class="news-date">
					<c:out value="${news.newsDate}"/>
				</div>	
				
				<div class="news-content">
					<c:out value="${news.briefNews}" />
				</div>
				<div class="news-link-to-wrapper">
					<div class="link-position">
						<c:if test="${sessionScope.role eq 'admin'}">
							<a href="controller?command=go_to_edit_news&id=${news.idNews}">editlink </a>
						</c:if>
							
						<a href="controller?command=go_to_view_news&id=${news.idNews}">viewlink </a>
						
						<c:if test="${sessionScope.role eq 'admin'}">
							<input type="checkbox" name="idNews" value="${news.idNews }" />
						</c:if>
					</div>
				</div>
				
			</div>
		</div>

	</c:forEach>
	
	<div class="no-news">
		<c:if test="${sessionScope.news eq null}">
		No news.
	</c:if>
	</div>
</form>

</c:if>

<!-- Russian -->

<c:if test="${sessionScope.lang eq 'ru'}">
<div class="body-title">
	<a href="controller?command=go_to_news_list">Новости >> </a> Список новостей
</div>

<form action="controller?command=do_delete_selected_news" method="post">
	<div class="delete2">
		<input type="submit" value="Удалить отмеченные новости"/>
	</div>
	<c:forEach var="news" items="${sessionScope.news}">
		<div class="single-news-wrapper">
			<div class="single-news-header-wrapper">
				<div class="news-title">
					<c:out value="${news.title}" />
				</div>
				<div class="news-date">
					<c:out value="${news.newsDate}"/>
				</div>	
				
				<div class="news-content">
					<c:out value="${news.briefNews}" />
				</div>
				<div class="news-link-to-wrapper">
					<div class="link-position">
						<c:if test="${sessionScope.role eq 'admin'}">
							<a href="controller?command=go_to_edit_news&id=${news.idNews}">Редактировать </a>
						</c:if>
							
						<a href="controller?command=go_to_view_news&id=${news.idNews}">Читать </a>
						
						<c:if test="${sessionScope.role eq 'admin'}">
							<input type="checkbox" name="idNews" value="${news.idNews }" />
						</c:if>
					</div>
				</div>
				
			</div>
		</div>

	</c:forEach>
	
	<div class="no-news">
		<c:if test="${sessionScope.news eq null}">
		Новостей нет.
	</c:if>
	</div>
</form>
</c:if>
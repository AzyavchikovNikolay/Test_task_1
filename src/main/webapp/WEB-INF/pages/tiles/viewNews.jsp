<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">

<div class="body-title">
	<a href="controller?command=go_to_news_list">News >> </a> View News
</div>

<div class="add-table-margin">
	<table class="news_text_format">
		<tr>
			<td class="space_around_title_text">News Title</td>

			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.title }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">News Date</td>

			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.newsDate }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">Brief</td>
			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.briefNews }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">Content</td>
			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.content }" />
				</div></td>
		</tr>
	</table>
</div>

<c:if test="${sessionScope.role eq 'admin'}">
<div class="first-view-button">
	<form action="controller" method="post">
		<input type="hidden" name="command" value="go_to_edit_news" /> <input
			type="hidden" name="id" value="${sessionScope.newsView.idNews}" /> <input
			type="submit" value="Edit" />
	</form>
</div>

<div class="second-view-button">
	<form action="controller" method="post">
		<input type="hidden" name="command" value="do_delete_news" /> <input
			type="hidden" name="id" value="${sessionScope.newsView.idNews}" /> <input
			type="submit" value="Delete" />
	</form>
</div>
</c:if>
</c:if>

<!-- Russian -->

<c:if test="${sessionScope.lang eq 'ru'}">
<div class="body-title">
	<a href="controller?command=go_to_news_list">Новости >> </a> Просмотр новости
</div>

<div class="add-table-margin">
	<table class="news_text_format">
		<tr>
			<td class="space_around_title_text">Заголовок новости</td>

			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.title }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">Дата новости</td>

			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.newsDate }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">Краткое содержимое</td>
			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.briefNews }" />
				</div></td>
		</tr>
		<tr>
			<td class="space_around_title_text">Полное содержимое</td>
			<td class="space_around_view_text"><div class="word-breaker">
					<c:out value="${sessionScope.newsView.content }" />
				</div></td>
		</tr>
	</table>
</div>


<c:if test="${sessionScope.role eq 'admin'}">
<div class="first-view-button">
	<form action="controller" method="post">
		<input type="hidden" name="command" value="go_to_edit_news" /> <input
			type="hidden" name="id" value="${sessionScope.newsView.idNews}" /> <input
			type="submit" value="Редактировать" />
	</form>
</div>

<div class="second-view-button">
	<form action="controller" method="post">
		<input type="hidden" name="command" value="do_delete_news" /> <input
			type="hidden" name="id" value="${sessionScope.newsView.idNews}" /> <input
			type="submit" value="Удалить" />
	</form>
</div>
</c:if>
</c:if>
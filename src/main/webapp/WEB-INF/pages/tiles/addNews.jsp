<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">
<div class="body-title">
	<a href="controller?command=go_to_news_list">News >> </a> Adding News
</div>

	<c:if test="${sessionScope.add eq 'warning'}">
		<div class=registration-warning>Warning! Fill in all the fields of the form</div>
	</c:if>

<form action="controller" method="post">
			<input type="hidden" name="command" value="do_add"/>
			
			<div class="add-table-margin">
				<table class="news_text_format">
					<tr>
						<td class="space_around_title_text">News id</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="newsId" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">News Title</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="titleEdit" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">News Date</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="newsDateEdit" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">Brief</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="briefEdit" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">Content</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="contentEdit" value=""/>
							</div>
						</td>
					</tr>	
				</table>
			</div>
				
			<div class="registration-field">
				<input type="submit" value="Add news"/>
			</div>
		</form>

		<form action="controller" method="post">
			<input type="hidden" name="command" value="go_to_news_list"/>
			<div class="registration-field">
				<input type="submit" value="Back to the news list"/>
			</div>
		</form>
	</c:if>
	
<!-- Russian -->

<c:if test="${sessionScope.lang eq 'ru'}">
<div class="body-title">
	<a href="controller?command=go_to_news_list">Новости >> </a> Добавление новости
</div>

	<c:if test="${sessionScope.add eq 'warning'}">
		<div class=registration-warning>Внимание! Заполните все поля формы</div>
	</c:if>

<form action="controller" method="post">
			<input type="hidden" name="command" value="do_add"/>
			
			<div class="add-table-margin">
				<table class="news_text_format">
					<tr>
						<td class="space_around_title_text">Id новости</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="newsId" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">Название новости</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="titleEdit" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">Дата новости</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="newsDateEdit" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">Краткое содержимое</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="briefEdit" value=""/>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="space_around_title_text">Полное содержимое</td>
						<td class="space_around_view_text">
							<div class="word-breaker">
								<input type="text" name="contentEdit" value=""/>
							</div>
						</td>
					</tr>	
				</table>
			</div>
				
			<div class="registration-field">
				<input type="submit" value="Добавить новость"/>
			</div>
		</form>

		<form action="controller" method="post">
			<input type="hidden" name="command" value="go_to_news_list"/>
			<div class="registration-field">
				<input type="submit" value="Вернуться к списку новостей"/>
			</div>
		</form>
	</c:if>
	

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">
<div class="wrapper">
	<div class="newstitle">
			News management<br/>
			<div class="newstitle-admin">
					(For admin:  login - admin, password - 111;<br/>
				for user:  login - petrov, password - 222)
		</div>
	</div>
	
	<div class="welcome-title">	
		<c:if test="${not (sessionScope.welcome eq 'guest')}">
			Welcome, ${sessionScope.welcome}!
				
		</c:if>
		<c:if test="${sessionScope.session eq 'guest'}">
			
		</c:if>
	</div>
	
	<div class="local-link">

		<div align="right">

			<a href="controller?command=go_to_english_lang"> English</a> &nbsp;&nbsp; 
			<a	href="controller?command=go_to_russian_lang"> Russian </a> <br /> <br />
		</div>

		<c:if test="${not (sessionScope.user eq 'active')}">

			<div align="right">
			
				<form action="controller" method="post">
					<input type="hidden" name="command" value="do_sign_in" />
					Enter login:<input type="text" name="login" value="" /><br /> 
					Enter password:<input type="password" name="password" value="" /><br />

					<c:if test="${not (requestScope.AuthenticationError eq null)}">
						<font color="red"> 
						   <c:out value="${requestScope.AuthenticationError}" />
						</font> 
					</c:if>
					
					<a href="controller?command=go_to_registration_page">
					Registration</a> <input type="submit" value="Sign In" /><br />
				</form>
					
			</div>

		</c:if>
		
		<c:if test="${sessionScope.user eq 'active'}">

			<div align="right">
				
				
			
				<form action="controller" method="post">
					<input type="hidden" name="command" value="do_sign_out" /> 
					<input type="submit" value="Sign out" /><br />
				</form>
			</div>

		</c:if>
	</div>

</div>
</c:if>

<!-- Russian -->

<c:if test="${sessionScope.lang eq 'ru'}">
<div class="wrapper">
	<div class="newstitle">
		Новостной портал<br/>
			
			<div class="newstitle-admin">
				(Для администратора:  логин - admin, пароль - 111;<br/>
				для пользователя:  логин - petrov, пароль - 222)
		
		</div>
	</div>

	<div class="welcome-title">	
		<c:if test="${not (sessionScope.welcome eq 'guest')}">
			Добро пожаловать, ${sessionScope.welcome}!
				
		</c:if>
		<c:if test="${sessionScope.session eq 'guest'}">
			
		</c:if>
	</div>

	<div class="local-link">

		<div align="right">

			<a href="controller?command=go_to_english_lang"> English</a> &nbsp;&nbsp; 
			<a	href="controller?command=go_to_russian_lang"> Russian </a> <br /> <br />
		</div>

		<c:if test="${not (sessionScope.user eq 'active')}">

			<div align="right">
			
				<form action="controller" method="post">
					<input type="hidden" name="command" value="do_sign_in" />
					Введите логин:<input type="text" name="login" value="" /><br /> 
					Введите пароль:<input type="password" name="password" value="" /><br />

					<c:if test="${not (requestScope.AuthenticationError eq null)}">
						<font color="red"> 
						   <c:out value="${requestScope.AuthenticationError}" />
						</font> 
					</c:if>
					
					<a href="controller?command=go_to_registration_page">
					Регистрация</a> <input type="submit" value="Войти" /><br />
				</form>
			</div>

		</c:if>
		
		<c:if test="${sessionScope.user eq 'active'}">

			<div align="right">
				
				<form action="controller" method="post">
					<input type="hidden" name="command" value="do_sign_out" /> 
					<input type="submit" value="Выйти" /><br />
				</form>

			</div>

		</c:if>
	</div>

</div>
</c:if>
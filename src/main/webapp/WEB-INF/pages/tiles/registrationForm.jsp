<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- English -->

<c:if test="${sessionScope.lang eq 'en'}">
<div class="registration">
	<div class=registration-title>Registration form<br/>
	</div>
		<c:if test="${sessionScope.warningReg eq 'warning'}">
			<div class=registration-warning>Warning! Fill in all the fields of the registration form</div>
		</c:if>
		<c:if test="${sessionScope.warningReg2 eq 'warning'}">
			<div class=registration-warning>Warning! User with such a login, phone or email already exists.</div>
		</c:if>
	<div class="registration-field" ><b>Enter the registration details:</b></div>
	<div  align="left">
		
		<form action="controller" method="post">
			<input type="hidden" name="command" value="do_registration"/>
			<div class="registration-field">Login: <input type="text" name="loginReg" value=""/><br/>
			</div> 
			<div class="registration-field">Password: <input type="text" name="passwordReg" value=""/><br/>
			</div>
			<div class="registration-field">Role:
				<select name="role">
					<option>admin</option>
					<option>user</option>
				</select>
			</div>
			<div class="registration-field">Surname: <input type="text" name="surname" value=""/><br/>
			</div>
			<div class="registration-field">Name: <input type="text" name="name" value=""/><br/>
			</div>
			<div class="registration-field">Phone: +<input type="text" name="phone" value=""/><br/>
			</div>
			<div class="registration-field">E-mail: <input type="text" name="email" value=""/><br/>
			</div>
			<div class="registration-field">
				<input type="submit" value="Confirm registration"/>
			</div>
		</form>

		<div class="registration-field">
			
				<form action="controller" method="post">
							<input type="hidden" name="command" value="return_to_base_page">
							<input type="submit" value="Go to main page"> 
				</form>			
		</div>
	</div>
</div>
</c:if>

<!-- Russian -->

<c:if test="${sessionScope.lang eq 'ru'}">
<div class="registration">
	<div class=registration-title>Форма регистрации<br/>
	</div>
		<c:if test="${sessionScope.warningReg eq 'warning'}">
			<div class=registration-warning>Внимание! Заполните все поля регистрационной формы</div>
		</c:if>
		<c:if test="${sessionScope.warningReg2 eq 'warning'}">
			<div class=registration-warning>Внимание! Пользователь с таким логином, номером телефона или электронной почтой уже зарегистрирован</div>
		</c:if>
	<div class="registration-field" ><b>Заполните регистрационные данные:</b></div>
	<div  align="left">
		
		<form action="controller" method="post">
			<input type="hidden" name="command" value="do_registration"/>
			<div class="registration-field">Логин: <input type="text" name="loginReg" value=""/><br/>
			</div> 
			<div class="registration-field">Пароль: <input type="text" name="passwordReg" value=""/><br/>
			</div>
			<div class="registration-field">Права:
			<div class="registration-field">Role:
				<select name="role">
					<option>admin</option>
					<option>user</option>
				</select>
			</div>
			<div class="registration-field">Фамилия: <input type="text" name="surname" value=""/><br/>
			</div>
			<div class="registration-field">Имя: <input type="text" name="name" value=""/><br/>
			</div>
			<div class="registration-field">Телефон: +<input type="text" name="phone" value=""/><br/>
			</div>
			<div class="registration-field">Электронная почта: <input type="text" name="email" value=""/><br/>
			</div>
			<div class="registration-field">
				<input type="submit" value="Зарегистрироваться"/>
			</div>
		</form>

		<div class="registration-field">
			
				<form action="controller" method="post">
							<input type="hidden" name="command" value="return_to_base_page">
							<input type="submit" value="Перейти на главную страницу"> 
				</form>			
		</div>
	</div>
</div>
</c:if>


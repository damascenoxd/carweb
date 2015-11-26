<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
	<h2>Novo usuário</h2>

	<form:form role="form" cssClass="well" commandName="usuario"
		servletRelativeAction="/usuario" method="POST">

		<div class="form-group">
			<label for="nome">Nome</label>
			<div class="input-group">
				<form:input path='nome' type='text' cssClass="form-control" placeholder="Nome"/>
				<form:errors path='nome' />
			</div>
		</div>
		<div class="form-group">
			<label for="email">E-mail</label>
			<div class="input-group">
				<form:input path='email' type='text' cssClass="form-control" placeholder="email@dominio"/>
				<form:errors path='email' />
			</div>
		</div>
		<div class="form-group">
			<label for="senha">Senha</label>
			<div class="input-group">
				<form:input path='senha' type='password' cssClass="form-control" placeholder="Senha"/>
				<form:errors path='senha' />
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form:form>
</template:admin>

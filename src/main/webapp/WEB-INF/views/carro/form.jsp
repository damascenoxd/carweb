<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
	<h2>Cadastrando Carros!</h2>

	<form:form role="form" cssClass="well" commandName="carro"
		servletRelativeAction="/carro" method="POST">

		<div class="form-group">
			<label for="fabricante">Fabricante</label>
			<div class="input-group">
				<form:input path='fabricante' type='text' />
				<form:errors path='fabricante' />
			</div>
		</div>
		<div class="form-group">
			<label for="modelo">Modelo</label>
			<div class="input-group">
				<form:input path='modelo' type='text' />
				<form:errors path='modelo' />
			</div>
		</div>
		<div class="form-group">
			<label for="ano">Ano</label>
			<div class="input-group">
				<form:input path='ano' type='text' />
				<form:errors path='ano' />
			</div>
		</div>
		<div class="form-group">
			<label for="acessorio">Acessórios</label>
			<div class="input-group">
				<form:input path='acessorio' type='text' />
				<form:errors path='acessorio' />
			</div>
		</div>
		<div class="form-group">
			<label for="valor">Valor</label>
			<div class="input-group">
				<form:input path='valor' type='text' />
				<form:errors path='valor' />
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form:form>
</template:admin>

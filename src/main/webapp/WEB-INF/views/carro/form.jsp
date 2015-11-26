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
				<form:input path='fabricante' type='text' cssClass="form-control" placeholder="Fabricante" />
				<form:errors path='fabricante' />
			</div>
		</div>
		<div class="form-group">
			<label for="modelo">Modelo</label>
			<div class="input-group">
				<form:input path='modelo' type='text' cssClass="form-control" placeholder="Modelo"/>
				<form:errors path='modelo' />
			</div>
		</div>
		</div>
		<div class="form-group">
			<label for="ano">Ano</label>
			<div class="input-group">
				<form:input path='ano' type='text' cssClass="form-control" placeholder="Ano"/>
				<form:errors path='ano' />
			</div>
		</div>
		<div class="form-group">
			<label for="acessorio">Acess�rios</label>
			<div class="input-group">
				<form:input path='acessorio' type='text' cssClass="form-control" placeholder="Acess�rios"/>
				<form:errors path='acessorio' />
			</div>
		</div>
		<div class="form-group">
			<label for="valor">Valor</label>
			<div class="input-group">
				<form:input path='valor' type='text' cssClass="form-control" placeholder="Valor"/>
				<form:errors path='valor' />
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form:form>
</template:admin>

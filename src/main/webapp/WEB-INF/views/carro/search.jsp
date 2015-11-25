<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
	<h2>Buscar</h2>

	<form:form role="form" cssClass="well" commandName="carro"
		servletRelativeAction="/carro/filtrar" method="POST">

		<div class="form-group">
			<label for="modelo">Modelo</label>
			<div class="input-group">
				<form:input path='modelo' type='text' />
				<form:errors path='modelo' />
			</div>
		</div>
		<div class="form-group">
			<label for="valor">Valor</label>
			<div class="input-group">
				<form:input path='valor' type='text' />
				<form:errors path='valor' />
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Buscar</button>
	</form:form>
</template:admin>
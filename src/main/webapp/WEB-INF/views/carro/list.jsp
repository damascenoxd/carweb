<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<template:admin>
	<h2>Listando Carros</h2>
	<div class="form-inline col-md-6">
		<form:form role="form" commandName="carro"
			servletRelativeAction="/carro/filtrar" method="POST">
			<div class="form-group col-md-5">
					<label for="modelo">Modelo</label>
					<div class="input-group">
						<form:input path='modelo' type='text' />
						<form:errors path='modelo' />
				</div>
			</div>
			<div class="form-group col-md-5">
					<label for="valor">Valor</label>
					<div class="input-group">
						<form:input path='valor' type='text' />
						<form:errors path='valor' />
				</div>
			</div>
			<button type="submit" class="btn btn-primary btn-xs">Buscar</button>
		</form:form>
	</div>
	<table
		class="table table-condensed table-bordered table-striped table-hover">
		<thead>
			<tr>
				<td>Código</td>
				<td>Fabricante</td>
				<td>Modelo</td>
				<td>Ano</td>
				<td>Acessórios</td>
				<td>Valor</td>
				<td>Usuário</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items='${findAll}' var='object'>
				<tr>
					<td>${object.id}</td>
					<td>${object.fabricante}</td>
					<td>${object.modelo}</td>
					<td>${object.ano}</td>
					<td>${object.acessorio}</td>
					<td>${object.valor}</td>
					<td>${object.usuario.nome}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="<c:url value='/carro/form'/>" class="btn btn-success">
		Novo Carro</a>
</template:admin>


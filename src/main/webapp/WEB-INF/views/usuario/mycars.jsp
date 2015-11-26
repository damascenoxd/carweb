<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
	<h2>Meus Carros</h2>
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
				<td>Ações</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items='${findByUsuario}' var='object'>
				<tr>
					<td>${object.id}</td>
					<td>${object.fabricante}</td>
					<td>${object.modelo}</td>
					<td>${object.ano}</td>
					<td>${object.acessorio}</td>
					<td>${object.valor}</td>
					<td>
					<a href="<c:url value='/carro'/>/${object.id}" class="btn btn-info btn-sm">Editar</a>
					<a href="<c:url value='/carro/remove'/>/${object.id}" class="btn btn-danger btn-sm">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="<c:url value='/carro/form'/>" class="btn btn-success">
		Novo Carro</a>
</template:admin>


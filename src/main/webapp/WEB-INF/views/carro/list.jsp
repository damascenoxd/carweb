<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
	<h2>Listando Carros</h2>
 <table class="table table-condensed table-bordered table-striped table-hover">
          		  <thead>
	                  <tr>
		                  	<td>Código</td>
		                  	<td>Fabricante</td>
		                  	<td>Modelo</td>
		                  	<td>Ano</td>
		                  	<td>Acessórios</td>
		                  	<td>Valor</td>
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
					  </tr>
                  </c:forEach>
                  </tbody>
          </table>
	<a href="<c:url value='/carro/form'/>" class="btn btn-success">
		Novo Carro</a>

</body>
</html>

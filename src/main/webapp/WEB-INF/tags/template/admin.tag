<%@attribute name="extraScripts" fragment="true"%>
<%@attribute name="extraStyles" fragment="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listing</title>

<!-- bootstrap FFDB58-->
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">

<!-- style -->
<link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/forms.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/menu.css'/>">
<jsp:invoke fragment="extraStyles" />


</head>

<body>

	<!-- INICIO NAV (alterar pra include)-->

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">

				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#menu" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<c:url value='/'/>">CarWeb</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-sidebar-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="<c:url value='/carro/form'/>">Novo Anúncio<span
							style="font-size: 16px;" class="pull-right hidden-xs showopacity"></span></a></li>
					<li><a href="<c:url value='/carro'/>">Anúncios<span
							style="font-size: 16px;" class="pull-right hidden-xs showopacity"></span></a></li>
					<li><a href="<c:url value='/usuario/mycars'/>">Meus Anúncios<span
							style="font-size: 16px;" class="pull-right hidden-xs showopacity"></span></a></li>
					
					<c:choose>
					<c:when test="${m == null}">				
					<li><a href="<c:url value='/usuario/form'/>">Cadastre-se<span
							style="font-size: 16px;" class="pull-right hidden-xs showopacity"></span></a></li>
					<li><a href="<c:url value='/login'/>">Entrar<span
							style="font-size: 16px;" class="pull-right hidden-xs showopacity"></span></a></li>
					</c:when>
					<c:otherwise>
            			<li><a href="<c:url value='/login/logout'/>">Sair<span
							style="font-size: 16px;" class="pull-right hidden-xs showopacity"></span></a></li>
					</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>

	<!-- FINAL NAV -->
	<jsp:doBody />

	<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
	<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/assets/js/menu.js'/>"></script>
		
	<jsp:invoke fragment="extraScripts" />
	
</body>
</html>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>

<div class="col-xs-3 col-md-offset-4" >
<form:form class="form-signin" modelAttribute="usuario" method="post" servletRelativeAction="/login/autenticar">
    <h5 class="form-signin-heading">Login</h5>
    <label class="sr-only">Username</label>
    <form:input path="email" cssClass="form-control" placeholder="Email"></form:input>
    <h5 class="form-signin-heading">Senha</h5>
    <label class="sr-only">Senha</label>
    <form:password path="senha" cssClass="form-control" placeholder="Senha"></form:password>
    	
    <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
</form:form>
<c:if test="${m != null}">
    <div class="alert alert-danger">
            <h2>LOGA</h2>
    </div>
</c:if>
</div>
<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
</template:admin>

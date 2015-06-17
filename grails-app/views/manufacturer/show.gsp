
<%@ page import="pl.polsl.lbialojan.Manufacturer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-manufacturer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="property-list form-horizontal manufacturer">
			
				<g:if test="${manufacturerInstance?.name}">
				<div class="form-group">
					<label id="name-label" class="property-label control-label col-sm-3"><g:message code="manufacturer.name.label" default="Name" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="name-label"><g:fieldValue bean="${manufacturerInstance}" field="name"/></p>
					
					</div>
				</div>
				</g:if>
			
				<g:if test="${manufacturerInstance?.notebooks}">
				<div class="form-group">
					<label id="notebooks-label" class="property-label control-label col-sm-3"><g:message code="manufacturer.notebooks.label" default="Notebooks" /></label>
					<div class="col-sm-9">
					
						<div class="list-group">
							<g:each in="${manufacturerInstance.notebooks}" var="n">
							<g:link controller="notebook" class="list-group-item" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link>
							</g:each>
						</div>
					
					</div>
				</div>
				</g:if>
			
			</div>
			<g:form url="[resource:manufacturerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-default" action="edit" resource="${manufacturerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

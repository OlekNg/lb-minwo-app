
<%@ page import="pl.polsl.lbialojan.Notebook" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notebook.label', default: 'Notebook')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-notebook" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="property-list form-horizontal notebook">
			
				<g:if test="${notebookInstance?.name}">
				<div class="form-group">
					<label id="name-label" class="property-label control-label col-sm-3"><g:message code="notebook.name.label" default="Name" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="name-label"><g:fieldValue bean="${notebookInstance}" field="name"/></p>
					
					</div>
				</div>
				</g:if>
			
				<g:if test="${notebookInstance?.gpu}">
				<div class="form-group">
					<label id="gpu-label" class="property-label control-label col-sm-3"><g:message code="notebook.gpu.label" default="Gpu" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="gpu-label"><g:fieldValue bean="${notebookInstance}" field="gpu"/></p>
					
					</div>
				</div>
				</g:if>
			
				<g:if test="${notebookInstance?.hdd}">
				<div class="form-group">
					<label id="hdd-label" class="property-label control-label col-sm-3"><g:message code="notebook.hdd.label" default="Hdd" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="hdd-label"><g:fieldValue bean="${notebookInstance}" field="hdd"/></p>
					
					</div>
				</div>
				</g:if>
			
				<g:if test="${notebookInstance?.manufacturer}">
				<div class="form-group">
					<label id="manufacturer-label" class="property-label control-label col-sm-3"><g:message code="notebook.manufacturer.label" default="Manufacturer" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="manufacturer-label"><g:link controller="manufacturer" action="show" id="${notebookInstance?.manufacturer?.id}">${notebookInstance?.manufacturer?.encodeAsHTML()}</g:link></p>
					
					</div>
				</div>
				</g:if>
			
				<g:if test="${notebookInstance?.processor}">
				<div class="form-group">
					<label id="processor-label" class="property-label control-label col-sm-3"><g:message code="notebook.processor.label" default="Processor" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="processor-label"><g:fieldValue bean="${notebookInstance}" field="processor"/></p>
					
					</div>
				</div>
				</g:if>
			
				<g:if test="${notebookInstance?.ram}">
				<div class="form-group">
					<label id="ram-label" class="property-label control-label col-sm-3"><g:message code="notebook.ram.label" default="Ram" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="ram-label"><g:fieldValue bean="${notebookInstance}" field="ram"/></p>
					
					</div>
				</div>
				</g:if>
			
				<g:if test="${notebookInstance?.screenSize}">
				<div class="form-group">
					<label id="screenSize-label" class="property-label control-label col-sm-3"><g:message code="notebook.screenSize.label" default="Screen Size" /></label>
					<div class="col-sm-9">
					
						<p class="property-value form-control-static" aria-labelledby="screenSize-label"><g:fieldValue bean="${notebookInstance}" field="screenSize"/></p>
					
					</div>
				</div>
				</g:if>
			
			</div>
			<g:form url="[resource:notebookInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit btn btn-default" action="edit" resource="${notebookInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

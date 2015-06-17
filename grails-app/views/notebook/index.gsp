
<%@ page import="pl.polsl.lbialojan.Notebook" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'notebook.label', default: 'Notebook')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-notebook" class="content scaffold-list" role="main">
			<div class="page-header">
				<h1>
					<g:message code="default.list.label" args="[entityName]" />
					<a href="${createLink(uri: '/' + entityName + '/create')}" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span> Add</a>
				</h1>
			</div>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'notebook.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="gpu" title="${message(code: 'notebook.gpu.label', default: 'Gpu')}" />
					
						<g:sortableColumn property="hdd" title="${message(code: 'notebook.hdd.label', default: 'Hdd')}" />
					
						<th><g:message code="notebook.manufacturer.label" default="Manufacturer" /></th>
					
						<g:sortableColumn property="processor" title="${message(code: 'notebook.processor.label', default: 'Processor')}" />
					
						<g:sortableColumn property="ram" title="${message(code: 'notebook.ram.label', default: 'Ram')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${notebookInstanceList}" status="i" var="notebookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${notebookInstance.id}">${fieldValue(bean: notebookInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: notebookInstance, field: "gpu")}</td>
					
						<td>${fieldValue(bean: notebookInstance, field: "hdd")}</td>
					
						<td>${fieldValue(bean: notebookInstance, field: "manufacturer")}</td>
					
						<td>${fieldValue(bean: notebookInstance, field: "processor")}</td>
					
						<td>${fieldValue(bean: notebookInstance, field: "ram")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${notebookInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

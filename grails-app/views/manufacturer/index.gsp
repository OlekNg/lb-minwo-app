
<%@ page import="pl.polsl.lbialojan.Manufacturer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-manufacturer" class="content scaffold-list" role="main">
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
					
						<g:sortableColumn property="name" title="${message(code: 'manufacturer.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${manufacturerInstanceList}" status="i" var="manufacturerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "name")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${manufacturerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

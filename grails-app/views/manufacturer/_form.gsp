<%@ page import="pl.polsl.lbialojan.Manufacturer" %>



<div class="form-group ${hasErrors(bean: manufacturerInstance, field: 'name', 'error')} required">
	<label for="name" class="control-label col-sm-3">
		<g:message code="manufacturer.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="name" required="" value="${manufacturerInstance?.name}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: manufacturerInstance, field: 'notebooks', 'error')} ">
	<label for="notebooks" class="control-label col-sm-3">
		<g:message code="manufacturer.notebooks.label" default="Notebooks" />
		
	</label>
	<div class="col-sm-9">
		
<div class="one-to-many list-group">
<g:each in="${manufacturerInstance?.notebooks?}" var="n">
    <g:link class="list-group-item" controller="notebook" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link>
</g:each>
<g:link class="list-group-item" controller="notebook" action="create" params="['manufacturer.id': manufacturerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'notebook.label', default: 'Notebook')])}</g:link>
</div>


	</div>
</div>


<%@ page import="pl.polsl.lbialojan.Notebook" %>



<div class="form-group ${hasErrors(bean: notebookInstance, field: 'name', 'error')} required">
	<label for="name" class="control-label col-sm-3">
		<g:message code="notebook.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="name" required="" value="${notebookInstance?.name}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: notebookInstance, field: 'gpu', 'error')} required">
	<label for="gpu" class="control-label col-sm-3">
		<g:message code="notebook.gpu.label" default="Gpu" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="gpu" required="" value="${notebookInstance?.gpu}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: notebookInstance, field: 'hdd', 'error')} required">
	<label for="hdd" class="control-label col-sm-3">
		<g:message code="notebook.hdd.label" default="Hdd" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="hdd" required="" value="${notebookInstance?.hdd}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: notebookInstance, field: 'manufacturer', 'error')} required">
	<label for="manufacturer" class="control-label col-sm-3">
		<g:message code="notebook.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:select id="manufacturer" name="manufacturer.id" from="${pl.polsl.lbialojan.Manufacturer.list()}" optionKey="id" required="" value="${notebookInstance?.manufacturer?.id}" class="many-to-one form-control"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: notebookInstance, field: 'processor', 'error')} required">
	<label for="processor" class="control-label col-sm-3">
		<g:message code="notebook.processor.label" default="Processor" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="processor" required="" value="${notebookInstance?.processor}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: notebookInstance, field: 'ram', 'error')} required">
	<label for="ram" class="control-label col-sm-3">
		<g:message code="notebook.ram.label" default="Ram" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="ram" required="" value="${notebookInstance?.ram}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: notebookInstance, field: 'screenSize', 'error')} required">
	<label for="screenSize" class="control-label col-sm-3">
		<g:message code="notebook.screenSize.label" default="Screen Size" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="screenSize" required="" value="${notebookInstance?.screenSize}"/>

	</div>
</div>


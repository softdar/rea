<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title></title>

</head>
<body>
<div class="page-header">
	<h2 align="center">Video Explicativo</h2>
</div>

<div class="well">
<g:form action="createVideo" controller="resource" class="form-horizontal" role="form">
	<br>
	<div class="control-group">
		<label class="control-label" for="inputTitulo">Titulo</label>
		<div class="controls">
			<g:textField name="title" class="span7" id="inputTitulo" placeholder="Titulo del Video"/>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" id="controlURL" for="inputURL">Direccion del video</label>
		<div class="controls">
			<g:textField name="url" id="controlURL" class="span7" placeholder="http://www.youtube.com/watch?v=cK-aPU-vRM8"/>
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
			<g:submitButton name="create" value="Crear" class="btn btn-primary"/>
		</div>
	</div>
</g:form>
</div>
</body>
</html>
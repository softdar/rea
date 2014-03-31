<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title></title>
	<resource:richTextEditor type="simple"/> 
</head>
<body>
<div class="page-header">
	<h2 align="center">Texto Explicativo</h2>
</div>

<div class="well">
<g:form action="createText" controller="resource" class="form-horizontal" role="form">
	<br>
	<div class="control-group">
		<label class="control-label" for="inputTitulo">Titulo</label>
		<div class="controls">
			<g:textField name="title" class="span7" id="inputTitulo" placeholder="Titulo del Texto"/>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" id="controlURL" for="text">Contenido</label>
		<div class="controls">
<%--			<g:textArea name="text" id="text" class="span7" placeholder="Ingrese aquí su texto"></g:textArea>--%>
			<richui:richTextEditor name="text" value="" width="525" />
		</div>
	</div>
	<div class="control-group">
		<div class="controls">
			<g:submitButton name="create" value="Crear" class="btn btn-primary" />
		</div>
	</div>
</g:form>
</div>
</body>
</html>
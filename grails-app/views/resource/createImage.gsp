<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title></title>
	<resource:richTextEditor type="simple"/>
</head>
<body>
<div class="page-header">
	<h2 align="center">Im&aacute;gen Ejemplo</h2>
</div>

<div class="well">
<g:form action="createImage" controller="resource" class="form-horizontal" role="form">
	<br>
	<div class="control-group">
		<label class="control-label" for="inputTitulo">Titulo</label>
		<div class="controls">
			<g:textField name="title" class="span6" id="inputTitulo" placeholder="Titulo de la imágen"/>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" id="controlURL" for="inputURL">Direcci&oacute;n de la im&aacute;gen</label>
		<div class="controls">
			<g:textField name="url" id="controlURL" class="span6" placeholder="http://2.bp.blogspot.com/_4nos0c_cvWY/SWlQSvgACPI/AAAAAAAAAEA/ySa4j89yCZ8/s320/PROBABILIDAD.jpg"/>
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" id="controlText" for="text">Descripci&oacute;n de la im&aacute;gen</label>
		<div class="controls">
<%--			<g:textArea name="text" id="text" class="span7" placeholder="Ingrese aquí su texto"></g:textArea>--%>
			<richui:richTextEditor name="text" value="" width="570" />
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
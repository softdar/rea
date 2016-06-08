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
	<div class="form-group">
		<label for="inputTitulo" class="col-sm-2 control-label">Título</label>
		<div class="col-sm-8">
			<g:textField name="title" class="form-control" id="inputTitulo" placeholder="Titulo del Texto" />
		</div>
	</div>
	<div class="form-group">
		<label for="text" class="col-sm-2 control-label">Contenido</label>
		<div class="col-sm-9">
			<richui:richTextEditor name="text" value="" width="525" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
      		<g:submitButton name="create" value="Crear" class="btn btn-primary" />
			<g:link controller="profile" action="dashboard" class="btn btn-primary">Cancelar</g:link>
    	</div>
	</div>
</g:form>
</div>
</body>
</html>
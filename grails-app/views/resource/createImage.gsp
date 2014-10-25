<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title></title>
	<resource:richTextEditor type="simple"/>
	<script type="text/javascript">
		function validateExtension() {
			var file = document.getElementById("controlURLInput").value;
			var initialPattern = /^http\:\/\/[a-zA-Z0-9\?\:\=\_\.]+/;
			var finalPattern = /\.(jpg|gif|png|bmp)$/;
			if (!(file || initialPattern.test(file) || finalPattern.test(file))) {
		    	$('#modal-alert').modal('show');
		    	return false;
			}
		}
	</script>
</head>
<body>
	<div class="page-header">
		<h2 align="center">Imagen</h2>
	</div>

	<div class="well">
		<g:form action="createImage" controller="resource" class="form-horizontal" role="form"
			onsubmit="return validateExtension()">
			<br>
			<div class="control-group">
				<label class="control-label" for="inputTitulo">Título</label>
				<div class="controls">
					<g:textField name="title" class="span6" id="inputTitulo"
						placeholder="Titulo de la imágen" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" id="controlURL" for="inputURL">Direcci&oacute;n
					de la im&aacute;gen</label>
				<div class="controls">
					<g:textField name="url" id="controlURLInput" class="span6"
						placeholder="https://farm6.staticflickr.com/5097/5418063084_3ab32ec52f_b.jpg" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" id="controlText" for="text">Descripci&oacute;n
					de la im&aacute;gen</label>
				<div class="controls">
					<g:textArea name="text" id="text" class="span7" placeholder="Ingrese aquí su epígrafe"></g:textArea>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<g:submitButton name="create" value="Crear" class="btn btn-primary" />
					<g:link controller="profile" action="dashboard" class="btn btn-primary">Cancelar</g:link>
				</div>
			</div>
		</g:form>
	</div>

	<!-- Modal -->
	<div id="modal-alert" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">Ouch!</h3>
		</div>
		<div class="modal-body">
			<p>El archivo no es una extensi&oacute;n de imágen valida o no
				existe la im&aacute;gen</p>
			<p>Por favor, Complete los campos con datos validos.</p>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</div>
	</div>
</body>
</html>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title></title>
	<resource:richTextEditor type="simple"/>
	<script type="text/javascript">
		function validateExtension() {
			var archivo = document.getElementById("controlURLInput").value;
			var patronInicial=/^http\:\/\/[a-zA-Z0-9\?\:\=\_\.]+/;
			var patronFinal=/\.(jpg|gif|png|bmp)$/;
			if (!(archivo && patronInicial.test(archivo) && patronFinal.test(archivo))) {
		    	//alert('El archivo no es una extensión de imágen valida');
		    	$('#modal-alert').modal('show');
		    	return false;
			}
		}
	</script>
</head>
<body>
	<div class="page-header">
		<h2 align="center">Im&aacute;gen Ejemplo</h2>
	</div>

	<div class="well">
		<g:form action="createImage" controller="resource"
			class="form-horizontal" role="form"
			onsubmit="return validateExtension()">
			<br>
			<div class="control-group">
				<label class="control-label" for="inputTitulo">Titulo</label>
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
						placeholder="http://2.bp.blogspot.com/_4nos0c_cvWY/SWlQSvgACPI/AAAAAAAAAEA/ySa4j89yCZ8/s320/PROBABILIDAD.jpg" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" id="controlText" for="text">Descripci&oacute;n
					de la im&aacute;gen</label>
				<div class="controls">
					<%--			<g:textArea name="text" id="text" class="span7" placeholder="Ingrese aquí su texto"></g:textArea>--%>
					<richui:richTextEditor name="text" value="" width="570" />
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<g:submitButton name="create" value="Crear" class="btn btn-primary" />
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
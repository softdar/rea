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
		<g:form controller="resource" action="${content.id ? 'updateImage' : 'createImage'}" 
				params="[id: content.id ? content.id : '']" class="form-horizontal" role="form"
				onsubmit="return validateExtension()"><br>
				
<%--			<div class="control-group">--%>
<%--				<label class="control-label" for="inputTitulo">Título</label>--%>
<%--				<div class="controls">--%>
<%--					<g:textField name="title" value="${content.id ? content.title : ''}" --%>
<%--								 class="span6" id="inputTitulo"--%>
<%--								 placeholder="Titulo de la imágen" />--%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="form-group">
				<label for="inputTitulo" class="col-sm-2 control-label">Título</label>
				<div class="col-sm-9">
					<g:textField name="title" value="${content.id ? content.title : ''}" 
								class="form-control" id="inputTitulo" 
								placeholder="Titulo del imágen" />
				</div>
			</div>
			
			
<%--			<div class="control-group">--%>
<%--				<label class="control-label"  for="inputURL">--%>
<%--					Dirección de la imágen--%>
<%--				</label>--%>
<%--				<div class="controls">--%>
<%--					<g:textField name="url" value="${content.id ? content.url : ''}" --%>
<%--								 id="controlURLInput" class="span6"--%>
<%--								 placeholder="https://farm6.staticflickr.com/5097/5418063084_3ab32ec52f_b.jpg" />--%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="form-group">
				<label id="controlURL" for="inputURL" class="col-sm-2 control-label">
				Dirección de la imágen</label>
				<div class="col-sm-9">
					<g:textField name="title" value="${content.id ? content.url : ''}" 
								id="controlURLInput" class="form-control"
								placeholder="https://farm6.staticflickr.com/5097/5418063084_3ab32ec52f_b.jpg" />
				</div>
			</div>
			
			
<%--			<div class="control-group">--%>
<%--				<label class="control-label" id="controlText" for="text">--%>
<%--					Descripción de la imágen--%>
<%--				</label>--%>
<%--				<div class="controls">--%>
<%--					<g:textArea name="text" value="${content.id ? content.text : ''}" --%>
<%--								id="text" class="span7" placeholder="Ingrese aquí su epígrafe" />--%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="form-group">
				<label id="controlText" for="text" class="col-sm-2 control-label">
				Descripción de la imágen</label>
				<div class="col-sm-9">
					<g:textArea name="text" value="${content.id ? content.text : ''}" 
								id="text" class="form-control" placeholder="Ingrese aquí su epígrafe" />
				</div>
			</div>
			
<%--			<div class="control-group">--%>
<%--				<div class="controls">--%>
<%--					<g:submitButton name="${content.id ? 'edit' : 'crear'}" --%>
<%--									value="${content.id ? 'Guardar Cambios' : 'Crear'}"--%>
<%--									class="btn btn-primary" />--%>
<%--					<g:link controller="profile" action="dashboard" class="btn btn-primary">Cancelar</g:link>--%>
<%--				</div>--%>
<%--			</div>--%>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
<%--		      		<g:submitButton name="create" value="Crear" class="btn btn-primary" />--%>
		      		<g:submitButton name="${content.id ? 'edit' : 'crear'}" 
									value="${content.id ? 'Guardar Cambios' : 'Crear'}"
									class="btn btn-primary" />
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
			<p>El archivo no es una extensión de imágen valida o no
				existe la imágen</p>
			<p>Por favor, Complete los campos con datos válidos.</p>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		</div>
	</div>
</body>
</html>
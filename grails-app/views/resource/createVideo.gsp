<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title></title>
<script type="text/javascript">
	function showPicture() {
		url = document.getElementById("controlURLInput").value;
		imgUrl_big = getScreen(url);
		//imgUrl_small = getScreen("uVLQhRiEXZs", 'small');
		document.getElementById("preview-video").src = imgUrl_big;
		$('#modal-preview').modal('show');
	}
	function getScreen(url, size) {
		if (url === null) {
			return "";
		}

		size = (size === null) ? "big" : size;
		var vid;
		var results;

		results = url.match("[\\?&]v=([^&#]*)");

		vid = (results === null) ? url : results[1];

		if (size == "small") {
			return "http://img.youtube.com/vi/" + vid + "/2.jpg";
		} else {
			return "http://img.youtube.com/vi/" + vid + "/0.jpg";
		}
	}
</script>
</head>
<body>
	<div class="page-header">
		<h2 align="center">Video Explicativo</h2>
	</div>

	<div class="well">
		<g:form action="createVideo" controller="resource"
			class="form-horizontal" role="form">
			<br>
			<div class="control-group">
				<label class="control-label" for="inputTitulo">Titulo</label>
				<div class="controls">
					<g:textField name="title" class="span7" id="inputTitulo"
						placeholder="Titulo del Video" />
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" id="controlURL" for="inputURL">Direccion del video</label>
				
				<div class="controls">
					<g:textField name="url" id="controlURLInput" class="span7" placeholder="http://www.youtube.com/watch?v=cK-aPU-vRM8" />
					<!-- Button to trigger modal -->
					<a class="btn btn-mini" href="javascript:showPicture();">Previsualizar</a>
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
	<div id="modal-preview" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-body">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<img id="preview-video" alt="" src="">
		</div>
	</div>
</body>
</html>
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
			<div class="form-group">
				<label for="inputTitulo" class="col-sm-2 control-label">Titulo</label>
				<div class="col-sm-9">
					<g:textField name="title" class="form-control" id="inputTitulo" placeholder="Titulo del Video" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" id="controlURL" for="inputURL">Dirección del video</label>
				<div class="col-sm-9">
					<g:textField name="url" id="controlURLInput" class="form-control"  placeholder="http://www.youtube.com/watch?v=cK-aPU-vRM8" />
					<!-- Button to trigger modal -->
					<a class="btn btn-default btn-sm" href="javascript:showPicture();">Previsualizar</a>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<g:submitButton name="create" value="Crear" class="btn btn-primary" />
					<g:link controller="profile" action="dashboard" class="btn btn-primary ">Cancelar</g:link>
				</div>
			</div>
		</g:form>
	</div>
	
	<!-- Modal -->
<%--	<div id="modal-preview" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
<%--		<div class="modal-body">--%>
<%--			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--			<img id="preview-video" alt="" src="">--%>
<%--		</div>--%>
<%--	</div>--%>
	<div id="modal-preview" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Imágen previa del link del Video</h4>
				</div>
				<div class="modal-body text-center">
					<img id="preview-video" alt="" src="">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

</body>
</html>
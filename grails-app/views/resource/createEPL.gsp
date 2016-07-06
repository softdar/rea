<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title></title>
<script type="text/javascript">
	function preview() {
		document.getElementById("epl-id").src = document.getElementById("controlURLInput").value;
		resizeIframes();
		$('#modal-preview').modal('show');
	}
	function resizeIframes() {
		iframe = $("iframe");
		iframe.width('100%');
		iframe.height(iframe.width() * 3);
	}
</script>
</head>
<body>
	<div class="page-header">
		<h2 align="center">Crear Recurso eXelearning</h2>
	</div>

	<div class="well">
		<g:form action="createEPL" controller="resource"
			class="form-horizontal" role="form">
			<br>
			<div class="form-group">
				<label for="inputTitulo" class="col-sm-2 control-label">Título</label>
				<div class="col-sm-9">
					<g:textField name="title" class="form-control" id="inputTitulo" placeholder="Titulo de recurso eXelearning" />
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" id="controlURL" for="inputURL">Dirección del recurso eXelearning</label>
				<div class="col-sm-9">
					<g:textField name="url" id="controlURLInput" class="form-control"  placeholder="http://www.resource-xpl.com/view" />
					<!-- Button to trigger modal -->
					<a class="btn btn-default btn-sm" href="javascript:preview();">Previsualizar</a>
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
	
	<div id="modal-preview" class="modal fade" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Vista previa del link al recurso eXelearning</h4>
				</div>
				<div class="modal-body text-center">
						<div class="row">
                            <div id="theContent" class="col-md-12">
                            	<iframe id="epl-id" src="" frameborder="0" width="200" height="200"></iframe>
                            </div>
                        </div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

</body>
</html>
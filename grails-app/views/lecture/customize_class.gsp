<html>
<head>
<meta name="layout" content="main" />
	<title></title>
</head>
<body>
	<div class="row-fluid">
		<header class="well">
			<h1>Personalice su Clase</h1>
		</header>
	</div>
	<div class="row-fluid">
	
		<g:form controller="lecture" action="create">

			<div class="control-group">
				<label class="control-label" for="inputTitulo">Título de la Clase</label>
				<div class="controls">
					<g:textField name="title" class="span7" id="inputTitulo"
						placeholder="Titulo del Texto" />
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" id="controlBrief" for="text">Descripción de la Clase</label>
				<div class="controls">
					<richui:richTextEditor name="brief" value="" width="535" />
				</div>
			</div>

			<legend>Ordenar recursos</legend>
			<div class="row-fluid">
			<ol class="sortable">
				<g:each var="resource" in="${resources}">
					<li>
						${resource.title} (<small>${resource.type}</small>)
						<g:hiddenField name="resources" value="${resource.id}"/>
					</li>
				</g:each>
			</ol>
			</div>
			<div class="row-fluid">
				<div class="span1">
					<g:submitButton name="Aceptar" class="btn" />
				</div>
				<div class="span2">
					<g:link controller="profile" action="dashboard" class="btn">Cancelar</g:link>
				</div>
			</div>
		</g:form>
	</div>
	
	<g:javascript library="sortable" />
	<script type="text/javascript">
		$(function(){
			$(".sortable").sortable();
		});
	</script>
</body>
</html>
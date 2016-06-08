<html>
<head>
<meta name="layout" content="main" />
	<title></title>
</head>
<body>
	<div class="row">
		<header class="well">
			<h1>Personalice su Clase</h1>
		</header>
	</div>
	<div class="row">
	
		<g:form controller="lecture" action="create">

			<div class="form-group">
				<label for="inputTitulo">Título de la Clase</label> 
				<div class="row">
					<div class="col-sm-7"> 
						<g:textField name="title" class="form-control" id="inputTitulo" placeholder="Titulo del Texto" />
					</div>
				</div>
			</div>

			<div class="form-group">
				<label for="inputName">Titulo corto</label> 
				<div class="row">
					<div class="col-sm-7"> 
						<g:textField name="name" class="form-control" id="inputName" placeholder="Titulo Corto Sin Espacios" />
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label" id="controlBrief" for="text">Descripción de la Clase</label>
				
				<div class="row">
					<div class="col-sm-10"> 
						<richui:richTextEditor name="brief" class="form-control" value="" width="700" />
					</div>
				</div>
			</div>
			
			<legend>Ordenar recursos</legend>
			<div class="row">
				<ol class="sortable">
					<g:each var="resource" in="${resources}">
						<li>
							${resource.title} (<small>${resource.type}</small>)
							<g:hiddenField name="resources" value="${resource.id}"/>
						</li>
					</g:each>
				</ol>
			</div>
			<div class="row">
				<div class="col-sm-1">
					<g:submitButton name="Aceptar" class="btn btn-primary" />
				</div>
				<div class="col-sm-2">
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
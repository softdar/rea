<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
	</head>
	<body>
		<div class="page-header">
			<h2 align="center">Cuestionario Interactivo</h2>
		</div>

		<div class="well">
			<g:form action="createQuiz" controller="resource" class="form-horizontal" role="form">
				<br>
				<div class="control-group">
					<label class="control-label" for="inputTitulo">Pregunta</label>
					<div class="controls">
						<g:textField name="title" class="span7" id="inputTitulo"
							placeholder="¿Cuál es tu pregunta?" />
					</div>
				</div>
				
				<dl class="dl-horizontal">
    				<dt>Opcion válida</dt>
    				<dd>Opciones</dd>
    			</dl>
				
				<div class="control-group">
					<label class="control-label" for="inputTitulo">
						<g:radio name="validItem" id="validItem1" value="0" />
					</label>
					<div class="controls">
						<g:textField name="firstItem" id="controlFirstItem" class="span7" placeholder="Algún ítem" />
					</div> <br>
					<label class="control-label" for="inputTitulo">
						<g:radio name="validItem" id="validItem2" value="2" />
					</label>
					<div class="controls">
						<g:textField name="secondItem" id="controlSecondItem" class="span7" placeholder="Algún otro ítem" />
					</div> <br>
					<label class="control-label" for="inputTitulo">
						<g:radio name="validItem" id="validItem3" value="3" />
					</label>
					<div class="controls">
						<g:textField name="thirdItem" id="controlThirdItem" class="span7" placeholder="Algún tercer ítem" />
					</div>
				</div>
				
				<div class="control-group">
					<div class="controls">
						<g:submitButton name="create" value="Crear" class="btn btn-primary" />
					</div>
				</div>
			</g:form>
		</div>
	</body>
</html>
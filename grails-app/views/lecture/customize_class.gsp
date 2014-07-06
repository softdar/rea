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
				<g:each var="resource" in="${resources}">
					<div class="well span4">
						<legend>${resource.title}
							<small>${resource.type}</small>
						</legend>
						<%--						<g:checkBox name="resources" value="${resource.id}" checked="false"/>--%>
						<select name="resources">
							<g:set var="i" value="${1}" />
							<g:while test="${i <= cantity}">
								<g:if test="${i == resource.id}">
									<option value="${resource.id}" selected>
										${resource.id}
									</option>
								</g:if>
								<g:else>
									<<option value="${i}">
										${i}
									</option>
								</g:else>
								${i++}
							</g:while>
						</select>
					</div>
				</g:each>
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
</body>
</html>
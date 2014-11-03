<html>
<head>
<meta name="layout" content="main" />
<title>Perfil de ${user.username}
</title>
</head>
<body>

	<div class="row-fluid">
		<header class="well">
			<h1>
				${user.username}
			</h1>
		</header>
	</div>
	<div class="clear"></div>

	<div class="row-fluid">
		<div class="well">
			<g:link controller="resource" action="create"
				params="[type: 'Video']" class="btn btn-large" role="button">
				<i class="icon icon-facetime-video"></i>
				<br />
				<small>Nuevo video</small>
			</g:link>
			<g:link controller="resource" action="create" params="[type: 'Text']"
				class="btn btn-large" role="button">
				<i class="icon icon-pencil"></i>
				<br />
				<small>Nuevo texto</small>
			</g:link>
			<g:link controller="resource" action="create"
				params="[type: 'Image']" class="btn btn-large" role="button">
				<i class="icon icon-picture"></i>
				<br />
				<small>Nueva im&aacute;gen</small>
			</g:link>
			<g:link controller="resource" action="create" params="[type: 'Quiz']"
				class="btn btn-large" role="button">
				<i class="icon icon-question-sign"></i>
				<br />
				<small>Nuevo cuestionario</small>
			</g:link>
			<g:link controller="resource" action="create"
				params="[type: 'Quote']" class="btn btn-large" role="button">
				<i class="icon icon-quote-left"></i>
				<br />
				<small>Nueva cita</small>
			</g:link>
		</div>
	</div>


	<ul class="nav nav-tabs" id="myTab">
		<li class="active"><a href="#resources" data-toggle="tab">Mis Recursos</a></li>
		<li><a href="#classes" data-toggle="tab">Mis Clases</a></li>
	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="resources">
			<div class="row-fluid">
				<g:form controller="lecture" action="preCreate">
					<g:each var="resource" in="${resources}">
						<div class="row-fluid">
							<div class="well span12">
								<div class="row-fluid">
									<legend>
										<g:checkBox name="resources" value="${resource.id}"
											checked="false" />
										${resource.title}
										<small> ${resource.type}, por ${resource.user.username}
										</small>
										<div class="btn-group pull-right">
											<g:link controller="resource" action="edit"
												params="[type: resource.type]"
												class="btn btn-primary" disabled="disabled">
												<i class="icon-edit"></i>
												Editar
											</g:link>
											<g:link controller="resource" action="delete" id="${resource.id}"
												class="btn btn-danger">
												<i class="icon-remove"></i>
												Eliminar
											</g:link>
										</div>
									</legend>
								</div>
								<div class="row-fluid">
									<g:render template="${resource.type}"
										model="[resource: resource, i: i]"></g:render>
								</div>
							</div>
						</div>
					</g:each>
					<div class="row-fluid">
						<g:submitButton name="Crear clase con los recursos seleccionados"
							class="btn btn-primary btn-large btn-block pull-right" />
					</div>
				</g:form>
			</div>
		</div>

		<div class="tab-pane" id="classes">
			<div class="row-fluid">
				<g:each var="lecture" in="${lectures}">
					<div class="row-fluid">
						<div class="well span12">
							<legend>
								<g:link controller="${user.username}" action="classes"
									id="${lecture.name}">
									${lecture.title}
								</g:link>
								&nbsp;
								<small>contiene ${lecture.contents.size()} recursos
								</small>
							</legend>

							<g:each var="content" in="${lecture.contents}">
								<div class="row-fluid">
									<div class="well span12">
										<div class="row-fluid">
											<legend>
												${content.title}
												<small> ${content.type}
												</small>
											</legend>
										</div>
										<div class="row-fluid">
											<g:render template="${content.type}"
												model="[resource: content, i: i]"></g:render>
										</div>
									</div>
								</div>
							</g:each>

						</div>
					</div>
				</g:each>
			</div>
		</div>
	</div>

</body>
</html>
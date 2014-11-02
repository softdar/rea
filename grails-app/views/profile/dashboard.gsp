<html>
<head>
<meta name="layout" content="main" />
<title>
	Perfil de ${user.username}
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
		<g:link controller="resource" action="create" params="[type: 'Video']" class="btn btn-large" role="button">
			<i class="icon icon-facetime-video"></i><br/><small>Nuevo video</small>
		</g:link>
		<g:link controller="resource" action="create" params="[type: 'Text']" class="btn btn-large" role="button">
			<i class="icon icon-pencil"></i><br/><small>Nuevo texto</small>
		</g:link>
		<g:link controller="resource" action="create" params="[type: 'Image']" class="btn btn-large" role="button">
			<i class="icon icon-picture"></i><br/><small>Nueva im&aacute;gen</small>
		</g:link>
		<g:link controller="resource" action="create" params="[type: 'Quiz']" class="btn btn-large" role="button">
			<i class="icon icon-question-sign"></i><br/><small>Nuevo cuestionario</small>
		</g:link>
		<g:link controller="resource" action="create" params="[type: 'Quote']" class="btn btn-large" role="button">
			<i class="icon icon-quote-left"></i><br/><small>Nueva cita</small>
		</g:link>
	</div>

	<div class="row-fluid">
		<legend>Mis recursos</legend>
		<g:form controller="lecture" action="preCreate">
			<div class="row-fluid">
				<g:each var="resource" in="${resources}">
					<div class="well span4">
						<legend>${resource.title} <small>${resource.type}</small></legend>
						<g:render template="${resource.type}" model="[resource: resource, i: i]"></g:render>
						<g:checkBox name="resources" value="${resource.id}" checked="false"/>
					</div>
				</g:each>
			</div>
			<div class="row-fluid">
				<g:submitButton name="Crear clase" class="btn pull-right"/>
			</div>
			
		</g:form>
	</div>

	<div class="row-fluid">
		<legend>Mis clases</legend>
		<div class="row-fluid">
			<g:each var="lecture" in="${lectures}">
				<div class="well span4">
					<legend>
						<g:link controller="${user.username}" action="classes" id="${lecture.name}">${lecture.title}</g:link><br>
						<small>contiene ${lecture.contents.size()} recursos</small>
					</legend>
					<g:render template="customize_class" model="[resources: lecture.contents]"></g:render>
				</div>
			</g:each>
		</div>
	</div>


</body>
</html>
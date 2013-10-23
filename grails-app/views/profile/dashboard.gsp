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
		<legend>Mis recursos</legend>
		<g:each var="resource" in="${resources}">
			<div class="well span4">
				<legend>${resource.title} <small>${resource.type}</small></legend>
			</div>
		</g:each>
	</div>

	<div class="row-fluid">
		<legend>Mis clases</legend>
		<g:each var="lecture" in="${lectures}">
			<div class="well span4">
				<legend>
					<g:link controller="${user.username}" action="classes" id="${lecture.name}">${lecture.title}</g:link>
					<small>contiene ${lecture.contents.size()} recursos</small>
				</legend>
			</div>
		</g:each>
	</div>


</body>
</html>
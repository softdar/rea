<html>
<head>
<meta name="layout" content="main" />
<title>Listado de clases</title>
</head>
<body>

	<div class="row-fluid">
		<header class="well">
			<h1>
				Todas las clases
			</h1>
		</header>
	</div>
	<div class="clear"></div>

	<div class="row-fluid">
		<g:each var="lecture" in="${clases}">
			<div class="row-fluid">
				<div class="well span12">
					<h2>
						<g:link controller="${lecture.user.username}" action="clases"
							id="${lecture.name}">${lecture.title}</g:link>
						<small>
							por
							<g:link controller="u" action="${lecture.user.username}">${lecture.user.username}</g:link>.
							Contiene ${lecture.contents.size()} recurso${lecture.contents.size() > 1 ? 's' : ''}
						</small>
					</h2>
				</div>
			</div>
		</g:each>
	</div>

</body>
</html>
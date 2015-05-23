<html>
<head>
<meta name="layout" content="main" />
<title>Perfil público de ${user.username}
</title>
</head>
<body>

	<div class="row-fluid">
		<header class="well">
			<h1>
				${user.username}
<%--				Iría el nombre completo--%>
			</h1>
		</header>
	</div>
	<div class="clear"></div>

	<ul class="nav nav-tabs" id="myTab">
		<li class="active"><a href="#resources" data-toggle="tab">Recursos</a></li>
		<li><a href="#classes" data-toggle="tab">Clases</a></li>
	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="resources">
			<div class="row-fluid">
				<g:form controller="lecture" action="preCreate">
					<g:if test="${!resources}">
						<div class="alert alert-info">
							Este usuario aún no tiene recursos vinculados en la plataforma.
						</div>
					</g:if>
					<g:else>
						<g:each var="resource" in="${resources}">
							<div class="row-fluid">
								<div class="well span12">
									<div class="row-fluid">
										<legend>
											${resource.title}
											<small>
												${resource.type}, por ${resource.user.username}
											</small>
										</legend>
									</div>
									<div class="row-fluid">
										<g:render template="${resource.type}"
											model="[resource: resource, i: i]"></g:render>
									</div>
								</div>
							</div>
						</g:each>
					</g:else>
				</g:form>
			</div>
		</div>

		<div class="tab-pane" id="classes">
			<div class="row-fluid">
				<g:if test="${!resources}">
					<div class="alert alert-info">
						Este usuario aún no tiene clases creadas en la plataforma.
					</div>
				</g:if>
				<g:else>
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
				</g:else>
			</div>
		</div>
	</div>

</body>
</html>
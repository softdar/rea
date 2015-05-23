<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />

<title><g:layoutTitle default="Recursos Educativos Abiertos" /></title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

<link rel="stylesheet" href="${resource(dir: 'css', file: 'rea.css')}"
	type="text/css">

<g:layoutHead />
<r:require modules="bootstrap" />
<r:require modules="font-awesome" />
<r:layoutResources />

</head>
<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="${createLink(uri: '/')}"><i class="icon-unlock"
					style="color: white;"></i> rea</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li>
							<sec:ifLoggedIn>
								<g:link controller="profile" action="dashboard">
									Escritorio
								</g:link>
							</sec:ifLoggedIn>
						</li>
					</ul>
					<sec:ifLoggedIn>
						<p class="navbar-text pull-right">
							Bienvenido, #<sec:loggedInUserInfo field="username"></sec:loggedInUserInfo>
							<g:link controller="logout">(Salir)</g:link>
						</p>
					</sec:ifLoggedIn>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">
		<g:layoutBody />
	</div>

	<g:javascript library="application" />
	<r:layoutResources />
</body>
</html>

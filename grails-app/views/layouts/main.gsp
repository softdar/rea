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
<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

<link rel="stylesheet" href="${resource(dir: 'css', file: 'rea.css')}" type="text/css">
<g:layoutHead />
<r:require modules="bootstrap" />
<r:require modules="font-awesome" />
<r:layoutResources />

<script type="text/javascript">
		function validatePassword() {
			var pwdOne = $('#newPassword').val();
			var pwdTwo = $('#passConfirmed').val();
			if(pwdOne !== pwdTwo || pwdOne == '' || pwdTwo == '') {
				showAlert();
				$('#newPassword').val('');
				$('#passConfirmed').val('');
				return false;
			} else {
				$("#editPassModal").modal('hide');
			}
		}

		function showAlert() {
			var alert = "<div id='errorPassword' class='alert alert-block alert-error fade in'>";
			alert += "<h4 class='alert-heading'>Ouch! Error de contraseñas!</h4>";
			alert += "<p>Las contraseñas no coinciden o los campos están vacíos. Vuelva a ingresar las contraseñas.</p>";
			alert += "</div>";
			$('#alert').html(alert);
		}
</script>

</head>
<body>
<%----%>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" data-aria-expanded="false">
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${createLink(uri: '/')}">
						<i class="icon-unlock" style="color: white;"></i> rea
					</a>
				</div>
				
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li>
							<sec:ifLoggedIn>
								<g:link controller="profile" action="dashboard">
									Escritorio
								</g:link>
							</sec:ifLoggedIn>
						</li>
						<li>
							<g:link controller="lecture" action="list">
								Repositorio de clases
							</g:link>
						</li>
					</ul>
					<sec:ifLoggedIn>
						<ul class="nav nav-pills pull-right">
							<li style="padding: 10px 0px 15px 15px; color: #999;">Bienvenido, #</li>
							<li class="dropdown">
								<a class="dropdown-toggle" style="padding-left: 0px;" id="drop5" role="button" data-toggle="dropdown" href="#">
									<sec:loggedInUserInfo field="username"></sec:loggedInUserInfo> <b class="caret"></b>
								</a>
								<ul id="menu3" class="dropdown-menu" role="menu"
									aria-labelledby="drop5">
									<li role="presentation">
									<a  href="#editPassModal" role="menuitem" data-toggle="modal" tabindex="-1" href="#">Cambiar Contraseña</a></li>
								</ul>
							</li>
							<li><g:link style="padding-left: 0px;" controller="logout">(Salir)</g:link></li>
						</ul>
					</sec:ifLoggedIn>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>

	<div class="container">
		<g:layoutBody />
	</div>
	
	<div id="editPassModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editPassModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="editPassModalLabel">Editar Contraseña</h3>
		</div>
		<g:form controller="profile" action="changePassword" class="form-horizontal" role="form"
				onsubmit="return validatePassword()">
			<div class="modal-body">
				<div class="control-group">
					<label class="control-label" for="newPassword">Contraseña nueva:</label>
					<div class="controls">
						<input type="password" name="newPassword" class="input-large" id="newPassword" placeholder="Password" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="passConfirmed">Repita contraseña:</label>
					<div class="controls">
						<g:passwordField name="passConfirmed" class="input-large" id="passConfirmed" placeholder="Password" />
					</div>
				</div>
				<div id="alert"></div>
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" data-aria-hidden="true">Cancelar</button>
				<g:submitButton name="change" value="Guardar Cambios" class="btn btn-primary" />
			</div>
		</g:form>
	</div>

	<g:javascript library="application" />
	<r:layoutResources />
</body>
</html>

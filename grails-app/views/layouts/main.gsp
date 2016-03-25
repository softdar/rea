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

<!-- JQuery Functinalities -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" 
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" 
    crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" 
	integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" 
    crossorigin="anonymous"></script>
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
	<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="container-fluid"> 
			<div class="navbar-header"> 
				<button type="button" class="navbar-toggle collapsed" 
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-8" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
				</button>  
				<a class="navbar-brand" href="${createLink(uri: '/')}">
					<span class="glyphicon glyphicon-link" aria-hidden="true"></span> rea
				</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-8">
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
  					<ul class="nav navbar-nav nav-pills pull-right">
						<li style="padding: 15px 0px 15px 15px; color: #999;">Bienvenido, #</li>
						<li class="dropdown">
							<a aria-expanded="false" 
								class="dropdown-toggle" 
								style="padding-left: 0px;" 
								id="drop5" 
								role="button" 
								data-toggle="dropdown" 
								href="#">
								<sec:loggedInUserInfo field="username"></sec:loggedInUserInfo> <b class="caret"></b>
							</a>
				 			<ul id="menu3" class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="drop5">
								<li role="presentation">
									<a href="#editPassModal" 
										role="menuitem" 
										data-toggle="modal" 
										tabindex="-1">Cambiar Contraseña</a>
								</li>
							</ul>
						</li>
						<li><g:link style="padding-left: 0px;" controller="logout">(Salir)</g:link></li>
					</ul>
				</sec:ifLoggedIn> 
			</div>
			
		</div>
	</div>

	<div class="container">
		<g:layoutBody />
	</div>
	
	<div id="editPassModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="editPassModalLabel">
		<div class="modal-dialog" role="document">
    		<div class="modal-content">
    			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
        				<span aria-hidden="true">&times;</span>
        			</button>
        			<h4 id="editPassModalLabel" class="modal-title">Editar Contraseña</h4>
      			</div>
      			
      			<g:form controller="profile" action="changePassword" onsubmit="return validatePassword()">
      				<div class="modal-body">
        				<div class="form-group">
    						<label for="newPassword">Contraseña nueva:</label>
    						<input type="password" id="newPassword" name="newPassword" class="form-control"  placeholder="Password">
 				 		</div>
 				 		<div class="form-group">
    						<label for="passConfirmed">Repita contraseña:</label>
    						<g:passwordField id="passConfirmed" name="passConfirmed" class="form-control" placeholder="Password" />
 				 		</div>
 				 		<div id="alert"></div>
      				</div>
					<div class="modal-footer">
        				<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        				<g:submitButton name="change" value="Guardar Cambios" class="btn btn-primary" />
      				</div>
				</g:form>
    		</div>
    	</div>
	</div>
	
	<div id="editPassModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="editPassModalLabel" aria-hidden="true">
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

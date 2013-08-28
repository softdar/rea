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

<title>Recursos Educativos Abiertos</title>

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

<r:require modules="bootstrap" />
<r:require modules="font-awesome" />
<r:layoutResources />

<style>
/* GLOBAL STYLES
    -------------------------------------------------- */
/* Padding below the footer and lighter body text */
body {
	padding-bottom: 40px;
	color: #5a5a5a;
}

/* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

/* Special class on .container surrounding .navbar, used for positioning it into place. */
.navbar-wrapper {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	z-index: 10;
	margin-top: 20px;
	margin-bottom: -90px;
	/* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
}

.navbar-wrapper .navbar {
	
}

/* Remove border and change up box shadow for more contrast */
.navbar .navbar-inner {
	border: 0;
	-webkit-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	-moz-box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
	box-shadow: 0 2px 10px rgba(0, 0, 0, .25);
}

/* Downsize the brand/project name a bit */
.navbar .brand {
	padding: 14px 20px 16px;
	/* Increase vertical padding to match navbar links */
	font-size: 16px;
	font-weight: bold;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .5);
}

/* Navbar links: increase padding for taller navbar */
.navbar .nav>li>a {
	padding: 15px 20px;
}

/* Offset the responsive button for proper vertical alignment */
.navbar .btn-navbar {
	margin-top: 10px;
}

/* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

/* Carousel base class */
.carousel {
	margin-bottom: 60px;
}

.carousel .container {
	position: relative;
	z-index: 9;
}

.carousel-control {
	height: 80px;
	margin-top: 0;
	font-size: 120px;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .4);
	background-color: transparent;
	border: 0;
	z-index: 10;
}

.carousel .item {
	height: 500px;
}

.carousel img {
	position: absolute;
	top: 0;
	left: 0;
	min-width: 100%;
	height: 500px;
}

.carousel-caption {
	background-color: transparent;
	position: static;
	max-width: 550px;
	padding: 0 20px;
	margin-top: 200px;
}

.carousel-caption.well {
	background-color: rgba(35, 35, 35, 0.5);
	border-color: #000;
	padding: 30px 15px;
	margin-top: 135px;
}

.carousel-caption.well h1,.carousel-caption.well p {
	text-shadow: 1px 1px 2px #000 !important;
}

.carousel-caption h1,.carousel-caption .lead {
	margin: 0;
	line-height: 1.25;
	color: #fff;
	text-shadow: 0 1px 1px rgba(0, 0, 0, .4);
}

.carousel-caption .btn {
	margin-top: 10px;
}

/* MARKETING CONTENT
    -------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .span4 {
	text-align: center;
}

.marketing h2 {
	font-weight: normal;
}

.marketing .span4 p {
	margin-left: 10px;
	margin-right: 10px;
}

/* Featurettes
    ------------------------- */
.featurette-divider {
	margin: 80px 0; /* Space out the Bootstrap <hr> more */
}

.featurette {
	padding-top: 120px;
	/* Vertically center images part 1: add padding above and below text. */
	overflow: hidden;
	/* Vertically center images part 2: clear their floats. */
}

.featurette-image {
	margin-top: -120px;
	/* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
}

/* Give some space on the sides of the floated elements so text doesn't run right into it. */
.featurette-image.pull-left {
	margin-right: 40px;
}

.featurette-image.pull-right {
	margin-left: 40px;
}

/* Thin out the marketing headings */
.featurette-heading {
	font-size: 50px;
	font-weight: 300;
	line-height: 1;
	letter-spacing: -1px;
}

/* RESPONSIVE CSS
    -------------------------------------------------- */
@media ( max-width : 979px) {
	.container.navbar-wrapper {
		margin-bottom: 0;
		width: auto;
	}
	.navbar-inner {
		border-radius: 0;
		margin: -20px 0;
	}
	.carousel .item {
		height: 500px;
	}
	.carousel img {
		width: auto;
		height: 500px;
	}
	.featurette {
		height: auto;
		padding: 0;
	}
	.featurette-image.pull-left,.featurette-image.pull-right {
		display: block;
		float: none;
		max-width: 40%;
		margin: 0 auto 20px;
	}
}

@media ( max-width : 767px) {
	.navbar-inner {
		margin: -20px;
	}
	.carousel {
		margin-left: -20px;
		margin-right: -20px;
	}
	.carousel .container {
		
	}
	.carousel .item {
		height: 300px;
	}
	.carousel img {
		height: 300px;
	}
	.carousel-caption {
		width: 65%;
		padding: 0 70px;
		margin-top: 100px;
	}
	.carousel-caption h1 {
		font-size: 30px;
	}
	.carousel-caption .lead,.carousel-caption .btn {
		font-size: 18px;
	}
	.marketing .span4+.span4 {
		margin-top: 40px;
	}
	.featurette-heading {
		font-size: 30px;
	}
	.featurette .lead {
		font-size: 18px;
		line-height: 1.5;
	}
}
</style>

</head>

<body class="intro">

	<!-- NAVBAR
    ================================================== -->
	<div class="navbar-wrapper">
		<!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
		<div class="container">

			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
					<button type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="brand" href="#">open.rea!</a>
					<div class="nav-collapse collapse">
						<ul class="nav">
							<li class="active"><a href="#">Inicio</a></li>
							<li><a href="#about">Sobre REA</a></li>
							<li><a href="#contact">Contacto</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
				<!-- /.navbar-inner -->
			</div>
			<!-- /.navbar -->

		</div>
		<!-- /.container -->
	</div>
	<!-- /.navbar-wrapper -->



	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
			<div class="item active">
				<img src="${resource(dir: 'img', file: 'carousel-1.jpg')}" alt="">
				<div class="container">
					<div class="carousel-caption well">
						<h1>Apertura</h1>
						<p class="lead">La condición principal de los recursos
							educativos abiertos.</p>
						<a href="#modalVideo" class="btn btn-large btn-primary" data-toggle="modal">Ver video explicativo</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${resource(dir: 'img', file: 'carousel-2.jpg')}" alt="">
				<div class="container">
					<div class="carousel-caption well">
						<h1>Colaboración</h1>
						<p class="lead">La principal competencia y motor de la
							innovación del siglo XXI.</p>
						<a class="btn btn-large btn-primary" href="#">Learn more</a>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="${resource(dir: 'img', file: 'carousel-3.jpg')}" alt="">
				<div class="container">
					<div class="carousel-caption well">
						<h1>Dominio Publico</h1>
						<p class="lead">Licencia que permite revisar, reusar, remixar,
							y redistribuir los recursos educativos abiertos.</p>
						<a class="btn btn-large btn-primary" href="#">Browse gallery</a>
					</div>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	</div>
	<!-- /.carousel -->

	<div id="modalVideo" class="modal hide fade" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">Recursos Educativos Abiertos</h3>
		</div>
		<div class="modal-body">
			<script type="text/javascript" src="http://s3.amazonaws.com/s3.www.universalsubtitles.org/embed.js">
			({"video_url": "http://vimeo.com/43456503"})
			</script>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">Volver</button>
		</div>
	</div>

	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row-fluid">
			<div class="span4">
				<img class="img-circle" src="http://placehold.it/140x140">
				<h2>
					¿Qué son los <abbr title="Recursos Educativos Abiertos">REA</abbr>?
				</h2>
				<p>Lorem ipsum.</p>
				<p>
					<a href="#modalREA" role="button" class="btn" data-toggle="modal">Detalles &raquo;</a>
				</p>
			</div>

			<div id="modalREA" class="modal hide fade" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">Recursos Educativos Abiertos (REA)</h3>
				</div>
				<div class="modal-body">
					<p>La principal ventaja que poseen los REA es su condición de
						abierto, porque esta apertura permite que alrededor de ellos se
						generen diversas comunidades de interes en todo el mundo al igual
						que como en el famoso caso del sistema operativo Linux.</p>
					<p>Estas comunidades no solo pueden crear de manera
						colaborativa los REA, sino que sobre todo pueden Revisar, Reusar,
						Remixar, y Redistribuir miles de REA ya existentes en Internet sin
						impedimentos legales, sociales, o impedimentos tecnológicos.</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Volver</button>
				</div>
			</div>

			<div class="span4">
				<img class="img-circle" src="http://placehold.it/140x140">
				<h2>Movimiento abierto</h2>
				<p>Lorem ipsum.</p>
				<p>
					<a href="#modalOpenMovement" role="button" class="btn"
						data-toggle="modal">Detalles &raquo;</a>
				</p>
			</div>

			<div id="modalOpenMovement" class="modal hide fade" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">Movimiento abierto</h3>
				</div>
				<div class="modal-body">
					<p>La valoración de que algo sea abierto vino dada a fines de
						la década de los 70s de la mano de Richard Stallman. Con el tiempo
						el contenido que se fue abriendo no se limitó a programas de
						software, hoy en día existen libros, enciclopedias, música,
						videos, películas, entre otros.</p>
					<p>De la misma manera que la apertura fue llegando a distintos
						tipos de contenido, el movimiento abierto se fue ampliando hacia a
						otras industrias. Entre estas se encuentra la industria de la
						educación. En la actualidad el movimiento abierto está tomando
						cada día más fuerza. Hay más de 400.000 obras con licencias poco o
						nada restrictivas fomentando una cultura abierta.</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Volver</button>
				</div>
			</div>

			<div class="span4">
				<img class="img-circle" src="http://placehold.it/140x140">
				<h2>Dimensiones</h2>
				<p>Lorem ipsum.</p>
				<p>
					<a href="#modalDimensions" role="button" class="btn"
						data-toggle="modal">Detalles &raquo;</a>
				</p>
			</div>

			<div id="modalDimensions" class="modal hide fade" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">Dimensiones</h3>
				</div>
				<div class="modal-body">
					<p>Hay tres dimensiones de apertura que poseen los Recursos
						Educativos Abiertos:</p>
					<p>
					<ul>
						<li><strong>Dimensión tecnológica. Formato abierto.</strong>
							Su contenido puede leerse, editarse, y redistribuirse sin que
							para ello se deban utilizar programas propietarios.</li>
						<li><strong>Dimensión social. Contexto abierto.</strong> Se
							encuentran diponibles en internet, su acceso debe ser simple,
							masivo y gratuito.</li>
						<li><strong>Dimensión legal. Licencia abierta.</strong> No
							deben tener restricciones de derecho de autor (Copyright),
							pertenecen al dominio público y se encuentran bajo licencias poco
							o nada restrictivas. Una opción ampliamente difundida de licencia
							abierta es Creative Commons.</li>
					</ul>
					</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Volver</button>
				</div>
			</div>

		</div>
		<!-- /.row -->

		<!-- FOOTER -->
		<footer>
			<div class="container">

				<!-- Three columns of text below the carousel -->
				<div class="row-fluid">
					<div class="span4">

						<ul class="links">
							<li><i class="icon-github"></i> <a
								href="http://www.github.com/delucas/rea">código fuente</a></li>
						</ul>

					</div>
				</div>
			</div>

		</footer>

	</div>
	<!-- /.container -->

	<g:javascript library="application" />
	<r:layoutResources />

	<script>
		$(function() {
			$('#myCarousel').carousel()
		})
	</script>

</body>
</html>
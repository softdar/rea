<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>
	${content.target.title}
</title>
</head>
<body>

	<div class="row-fluid">

		<header class="well">
			<h1>
				${content.target.title}<small> por ${content.target.user.username}</small>
			</h1>
			<p>
				${content.target.brief}
			</p>
		</header>
	</div>
	<div class="clear"></div>

	<div class="row-fluid">
		<div id="main" class="span9 framed">

			<div id="theContent"></div>

		</div>
		<div id="index" class="span3 framed">

			<header>
				<h3>Temario</h3>
			</header>
			<div>
				<ul class="nav nav-list">

					<g:each in="${content.target.contents}" var="theContent" status="i">
						<li class="selectable" id="content_${i}"><a href="#content_${i}"> ${theContent.title}
						</a></li>
					</g:each>

				</ul>
			</div>
		</div>
	</div>

	<div style="display: none;">

		<g:each in="${content.target.contents}" var="theContent" status="i">
			<g:render template="${theContent.type}"
				model="[theContent: theContent, i: i]"></g:render>
		</g:each>

	</div>

	<script>

		function resizeVideoIframes() {
			theContainer = $("#theContent").parent()
			iframe = $("iframe")

			iframe.height(theContainer.height() - 60)
			iframe.width(theContainer.width())
		}

		$(function() {

			$(window).on('resize', function() {
				resizeVideoIframes()
			});

			$(".selectable").on('click', function(e) {
				$("#theContent").html($("div#" + $(this).attr('id')).html());
				$(".selectable").removeClass("active");
				$(this).addClass("active");
				resizeVideoIframes()
			});

			$("li#content_0").click();

			enquire.register("screen and (max-width:767px)", {
				match : function() {
					$("#index").insertBefore($("#main"))
				},
				unmatch : function() {
					$("#index").insertAfter($("#main"))
				}
			});
		});
		
	</script>

</body>
</html>

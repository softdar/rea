<r:require modules="bootstrap-carousel"/>

<div id="content_${i}">
	<div>
		<h3>
			${theContent.title}
		</h3>


		<div id="questions_${i}" class="carousel slide">
			<!-- Carousel items -->
			<div class="carousel-inner">

			<g:each in="${theContent.data}" var="q" status="j">
				<div id="q${j}" class="${(j==0)?'active ':''}item text">
					<h4>${q.question}</h4>
					<ul style="list-style: none;">

					<g:each in="${q.options}" var="op">
						<li><label class="checkbox"> <input name="question_${j}" type="radio" value="${op.number}">
								${op.text}
						</label></li>
					</g:each>
					</ul>

					<hr/>

					<div class="row">
						<button class="btn btn-success pull-right" id="grade_question_${j}"
							style="margin-right: 25px;" onclick="$('#modal${j}').modal();"
							disabled="disabled">
							Enviar a corrección</button>
					</div>

					<script>
						$(function(){
							$("input[name=question_${j}]").on('change', function(){
								if ($("input[name=question_${j}]:checked").length == 0) {
									$("#grade_question_${j}").attr("disabled", "disabled")
								} else {
									$("#grade_question_${j}").removeAttr("disabled")
								}
							})
							$("#grade_question_${j}").on('click', function(){
								if ($("input[name=question_${j}]:checked").val() == ${q.answer}) {
									$("#myModalLabel_${j}").html('¡Yeah!')
									$("#myModalButton_${j}").html('¡Genial!')
								} else {
									$("#myModalLabel_${j}").html('Ouch...')
									$("#myModalButton_${j}").html('Intentarlo nuevamente')
								}
							})
						});
					</script>


					<div class="modal hide fade" id="modal${j}" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h3 id="myModalLabel_${j}">-</h3>
						</div>
						<div class="modal-body">
							<p>${q.more}</p>
						</div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true" id="myModalButton_${j}">-</button>
						</div>
					</div>

					<div class="row" style="margin-top: 50px; position: relative;">
					<g:if test="${j != 0}">
						<button class="btn btn-primary" style="margin-left: 25px;"
							onclick="$('#questions_${i}').carousel('prev')">Pregunta
							anterior</button>
					</g:if>
					<g:if test="${j < (theContent.data.size() -1)}">
						<button class="btn btn-primary pull-right"
							style="margin-right: 25px;"
							onclick="$('#questions_${i}').carousel('next')">Próxima
							pregunta</button>
					</g:if>
					</div>
				</div>

			</g:each>
			</div>

		</div>

		<script>
			$(function(){
				$(".carousel").carousel({
					interval : false
				});
			})
		</script>

	</div>
</div>
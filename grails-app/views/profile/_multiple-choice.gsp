<div class="span6">
	<h4>
		${resource.questions.first().question}
	</h4>
	<ul style="list-style: none;">
		<g:each in="${resource.questions.first().options}" var="op">
			<li><label class="checkbox"> <input type="radio"
					disabled="disabled"> ${op.text}
			</label></li>
		</g:each>
	</ul>
</div>

<div class="span6">
	<h4>Si es correcta</h4>
	<p>${resource.questions.first().encourage}</p>
	<h4>Si es incorrecta</h4>
	<p>${resource.questions.first().hint}</p>
</div>
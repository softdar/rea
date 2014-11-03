<div id="content_${i}">
	<div>
		<h3>
			${theContent.title}
			<small>por ${theContent.user.username}</small>
		</h3>
		<iframe
			src="http://www.youtube.com/embed/${resource.url.split('/').last()}"
			frameborder="0" allowfullscreen></iframe>
	</div>
</div>

<script type="text/javascript">

	//$( "#preview-video" ).load(function() {
		// Handler for .load() called.
		//console.log('image loaded ' + this.src);
		//showPicture();
	//});
	function showPicture() {
		url = '${resource.url}';
		//imgUrl_big = getScreen(url);
		imgUrl_small = getScreen(url, 'small');
		document.getElementById("preview-video").src = imgUrl_small;
	}
	function getScreen(url, size) {
		if (url === null) {
			return "";
		}

		size = (size === null) ? "big" : size;
		var vid;
		var results;

		results = url.match("[\\?&]v=([^&#]*)");

		vid = (results === null) ? url : results[1];

		if (size == "small") {
			return "http://img.youtube.com/vi/" + vid + "/2.jpg";
		} else {
			return "http://img.youtube.com/vi/" + vid + "/0.jpg";
		}
	}
</script>
<img id="preview-video" alt="" src="${resource.url}" onload="showPicture()">
<g:link controller="resource" action="create" params="[type: 'Video']" class="btn btn-primary">Editar</g:link>
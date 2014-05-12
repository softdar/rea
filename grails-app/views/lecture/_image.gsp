<div id="content_${i}">
	<h3>
		${theContent.title}
	</h3>
	<div class="row-fluid">
		<img src="${theContent.url}" class="custom-img" alt=""
			id="tooltipImg" title="${theContent.title}" />
	</div>
	<div class="custom-link">
		<a id="linkTooltip" class="pull-right" data-placement="right" href="${theContent.url}"
			data-toggle="tooltip" title="Página original de la imagen">
			<i class="icon-external-link"></i>
			Enlace a la imagen original
		</a>
		<div class="clear"></div>
	</div>
	<blockquote>
		${theContent.text}
	</blockquote>
</div>

<script type="text/javascript">
	function enableTootip() {
		$(function () {
		    $('#linkTooltip').tooltip().on("mouseenter", function () {
		        var $this = $(this),
		            tooltip = $this.next(".tooltip");
		        tooltip.find(".tooltip-inner").css({
		           top: 276, 
		           left: 580
		     });
		   });
		});
		
		$(function() {
			$('#linkTooltip').tooltip('show');
		});
	}
	function disableTooltip() {
		$(function() {
			$('#linkTooltip').tooltip('hide');
		});
	}
</script>
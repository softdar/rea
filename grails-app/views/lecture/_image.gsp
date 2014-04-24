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

<div id="content_${i}">
	<h3>
		${theContent.title}
	</h3>
	<img src="${theContent.url}" class="img-rounded custom-img" alt=""
		id="tooltipImg" title="${theContent.text}" />
	<br>
	<div class="custom-link">
		<a id="linkTooltip" data-placement="right" href="${theContent.url}"
			data-toggle="tooltip" title="Página original de la imágen" onMouseOver="enableTootip()"
			onMouseOut="disableTootip()">link a página</a><br>
	</div>
</div>


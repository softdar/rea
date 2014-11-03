<div id="content_${i}">
	<h3>
		${theContent.title}
		<small>por ${theContent.user.username}</small>
	</h3>
	<div class="row-fluid">
		<img src="${theContent.url}" class="custom-img" alt="" id="tooltipImg"
			title="${theContent.title}" />
	</div>
	<div class="row-fluid">
		<div class="custom-link">
			<a id="linkTooltip" class="pull-right" data-placement="right"
				href="${theContent.url}" data-toggle="tooltip"
				title="Página original de la imagen"> <i
				class="icon-external-link"></i>
			</a>
			<div class="clear"></div>
		</div>
	</div>
	<div class="row-fluid">
		<blockquote>
			${theContent.text}
		</blockquote>
	</div>
</div>

<script type="text/javascript">
	function enableTootip() {
		$(function() {
			$('#linkTooltip').tooltip().on("mouseenter", function() {
				var $this = $(this), tooltip = $this.next(".tooltip");
				tooltip.find(".tooltip-inner").css({
					top : 276,
					left : 580
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
---
layout: page
title: Countdown to the history
---
<html>
  <head>
  	<link rel="stylesheet" href="flipclock.css">

  	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

  	<script src="flipclock.js"></script>
  </head>
  <body>
  	<div class="clock" style="margin:2em;"></div>

  	<script type="text/javascript">
		$(document).ready(function(){
			var date  = new Date(2016, 12, 20);
			var now   = new Date();
			var diff  = now.getTime()/1000 - date.getTime()/1000;

			clock = $('.clock').FlipClock(diff, {
				clockFace: 'DailyCounter',
				countdown: false
				});
		});
  	</script>
  </body>
</html>
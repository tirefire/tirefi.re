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
  		var clock;

  		$(document).ready(function() {

  			// Grab the current date
  			var currentDate = new Date();

  			// No idea what the significance of this date is
  			var pastDate  = new Date(2017, 1, 20, 0, 0, 0);

  			// Calculate the difference in seconds between the future and current date
  			var diff = currentDate.getTime() / 1000 - pastDate.getTime() / 1000;

  			// Instantiate a countdown FlipClock
  			clock = $('.clock').FlipClock(diff, {
  				clockFace: 'DailyCounter',
a  			});
  		});
  	</script>
  </body>
</html>

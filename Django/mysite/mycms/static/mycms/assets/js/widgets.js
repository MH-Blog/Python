
$(function() {
    "use strict";

// chart 1
	
	$('#widget-chart-1').sparkline([5,8,7,10,9,10,8,6,4,6,8,7,6,8,9,10,8,6,4,5,8,7,10,9,5,8,7,9,5,4], {
            type: 'bar',
            height: '35',
            barWidth: '2',
            resize: true,
            barSpacing: '2',
            barColor: '#fff'
        });
		
	// chart 2
	
		$('#widget-chart-2').sparkline([5,8,7,10,9,10,8,6,4,6,8,7,6,8,9,10,8,6,4,5,8,7,10,9,5,8,7,9,5,4], {
            type: 'bar',
            height: '35',
            barWidth: '2',
            resize: true,
            barSpacing: '2',
            barColor: '#fff'
        });
		
	// chart 3	
		
		$('#widget-chart-3').sparkline([5,8,7,10,9,10,8,6,4,6,8,7,6,8,9,10,8,6,4,5,8,7,10,9,5,8,7,9,5,4], {
           type: 'bar',
            height: '35',
            barWidth: '2',
            resize: true,
            barSpacing: '2',
            barColor: '#fff'
        });
		
		
	// chart 4

   $("#widget-chart-4").sparkline([2,4,4,6,8,5,6,4], {
      type: 'line',
      width: '100%',
      height: '50',
      lineColor: '#fff',
      lineWidth: '2',
      fillColor: 'rgba(255, 255, 255, 0.2)',
      maxSpotColor: '#fff',
      highlightLineColor: '#fff',
      highlightSpotColor: '#fff'
    });


// chart 5

   $("#widget-chart-5").sparkline([2,4,4,6,8,5,6,4], {
      type: 'line',
      width: '100%',
      height: '50',
      lineColor: '#fff',
      lineWidth: '2',
      fillColor: 'rgba(255, 255, 255, 0.2)',
      maxSpotColor: '#fff',
      highlightLineColor: '#fff',
      highlightSpotColor: '#fff'
    });

// chart 6

   $("#widget-chart-6").sparkline([2,4,4,6,8,5,6,4 ], {
      type: 'line',
      width: '100%',
      height: '50',
      lineColor: '#fff',
      lineWidth: '2',
      fillColor: 'rgba(255, 255, 255, 0.2)',
      maxSpotColor: '#fff',
      highlightLineColor: '#fff',
      highlightSpotColor: '#fff'
    });


// chart 7

    $("#widget-chart-7").sparkline([2,4,4,6,8,5,6,4 ], {
      type: 'line',
      width: '100%',
      height: '50',
      lineColor: '#fff',
      lineWidth: '2',
      fillColor: 'rgba(255, 255, 255, 0.2)',
      maxSpotColor: '#fff',
      highlightLineColor: '#fff',
      highlightSpotColor: '#fff'
    });
	
	
	// easy pie chart 
	
	 $('.dash-chart').easyPieChart({
		easing: 'easeOutBounce',
		barColor : '#ffffff',
		lineWidth: 10,
		trackColor : 'rgba(255, 255, 255, 0.12)',
		scaleColor: false,
		onStep: function(from, to, percent) {
			$(this.el).find('.w_percent').text(Math.round(percent));
		}
	 });
		
	  	
	  
});		
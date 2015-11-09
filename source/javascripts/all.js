//= require jquery
//= require '_flowtype.js'
//= require '_imgix.js'

'use strict';

$('.hero__large-title').flowtype({
 fontRatio : 10
});

var options = {
			updateOnResizeDown : true,
			updateOnPinchZoom : true,
			fitImgTagToContainerWidth: true,
			fitImgTagToContainerHeight: true,
			pixelStep : 10,
      autoInsertCSSBestPractices: true
	};
  
	imgix.onready(function() {
		imgix.fluid(options);
	});

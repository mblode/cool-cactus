//= require jquery/dist/jquery
//= require foundation-sites/dist/foundation

'use strict';

$(document).foundation();

function initialize() {
  var myLatLng = new google.maps.LatLng(-37.860522, 145.0259423);

  var mapOptions = {
    zoom: 17,
    center: myLatLng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }

  var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);

  var marker = new google.maps.Marker({
    position: myLatLng,
    map: map,
    title: 'Cool Cactus Store'
  });
}
google.maps.event.addDomListener(window, 'load', initialize);

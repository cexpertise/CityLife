<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Street View controls</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
      function initPano() {
        // Note: constructed panorama objects have visible: true
        // set by default.
        var panorama = new google.maps.StreetViewPanorama(
            document.getElementById('map'), {
              position: {lat: 26.9535, lng: 75.8461},
              addressControlOptions: {
                position: google.maps.ControlPosition.BOTTOM_CENTER
              },
              linksControl: false,
              panControl: false,
              enableCloseButton: false
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkYmLwUjxrGcY841EMHEZnzKZEN0mKbh0&callback=initPano">
    </script>
  </body>
</html>
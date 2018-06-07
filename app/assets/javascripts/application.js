//= require rails-ujs
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap


// Change the color of the card

// const cards = document.querySelectorAll(".card-body")

// cards.forEach((card) => {
// card.addEventListener("click", (event) => {
//   console.log(card.classList.toggle("blur-card"));
//   });
// });



// Get user location

// var x = document.querySelectorAll("locate");

// function getLocation() {
//     if (navigator.geolocation) {
//         navigator.geolocation.watchPosition(showPosition);
//     } else {
//         x.innerHTML = "Geolocation is not supported by this browser.";}
//     }

// function showPosition(position) {
//     x.innerHTML="Latitude: " + position.coords.latitude +
//     "<br>Longitude: " + position.coords.longitude;
// }


      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 6
        });
        var infoWindow = new google.maps.InfoWindow({map: map});

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('Location found.');
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
      }

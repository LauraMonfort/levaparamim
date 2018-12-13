import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

if (mapElement) {
  // map.addControl(new MapboxGeocoder({
  //   accessToken: mapboxgl.accessToken
  // }));
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
  const markers = JSON.parse(mapElement.dataset.markers);
  console.log(markers);
  markers.forEach((marker) => {
  new mapboxgl.Marker()
  .setLngLat([marker.lng, marker.lat])
  .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
  .setHTML(marker.infoWindow.content))
  .addTo(map);
});
if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75 })
  }
};



// const addressInput = document.getElementById('request_address');
const addressInputs = document.querySelectorAll('.algolia-bar');
addressInputs.forEach(input => {

  const places = require('places.js');
  const placesAutocomplete = places({
    container: input,
    language: 'en'
  });
});

// if (mapElement) {
//   markers.forEach((marker) => {
//     new mapboxgl.Marker()
//     .setLngLat([marker.lng, marker.lat])
//     .setPopup(new mapboxgl.Popup({ offset: 25 })
//       .setHTML(marker.infoWindow.content))
//     .addTo(map);
//   })
// }

let pop = window.location.href

if (pop.slice(-1) === "/") {
 const algoliaInputs = document.querySelectorAll('span.algolia-places')
 algoliaInputs.forEach(input => {
 input.style.width  = "210px"
});
} else {
 console.log(`hey!`);
}

// const algoliaInputs = document.querySelectorAll('span.algolia-places')
// algoliaInputs.forEach(input => {
//   input.style.width  = "210px"
// });


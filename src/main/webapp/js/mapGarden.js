// In the following example, markers appear when the user clicks on the map.
// Each marker is labeled with a single alphabetical character.
var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var labelIndex = 0;

function initialize() {
	var bangalore = {
		lat : 12.97,
		lng : 77.59
	};
	var map = new google.maps.Map(document.getElementById('map'), {
		zoom : 12,
		center : bangalore
	});

	// This event listener calls addMarker() when the map is clicked.
	google.maps.event.addListener(map, 'click', function(event) {
		addMarker(event.latLng, map);
	});

	// Add a marker at the center of the map.
	addMarker(bangalore, map);
}

// Adds a marker to the map.
function addMarker(location, map) {
	// Add the marker at the clicked location, and add the next-available label
	// from the array of alphabetical characters.
	var marker = new google.maps.Marker({
		position : location,
		label : labels[labelIndex++ % labels.length],
		map : map
	});
}

google.maps.event.addDomListener(window, 'load', initialize);

function initMap() {
	var map = new google.maps.Map(document.getElementById('map'), {
		center : {
			lat : -33.866,
			lng : 151.196
		},
		zoom : 15
	});

	var request = {
		placeId : 'ChIJN1t_tDeuEmsRUsoyG83frY4',
		fields : [ 'name', 'formatted_address', 'place_id', 'geometry' ]
	};

	var infowindow = new google.maps.InfoWindow();
	var service = new google.maps.places.PlacesService(map);

	service.getDetails(request, function(place, status) {
		if (status === google.maps.places.PlacesServiceStatus.OK) {
			var marker = new google.maps.Marker({
				map : map,
				position : place.geometry.location
			});
			google.maps.event.addListener(marker, 'click', function() {
				infowindow.setContent('<div><strong>' + place.name
						+ '</strong><br>' + 'Place ID: ' + place.place_id
						+ '<br>' + place.formatted_address + '</div>');
				infowindow.open(map, this);
			});
		}
	});
}
// function initMap() {
// var myLatLng = {
// lat : -25.363,
// lng : 131.044
// };
//
// var map = new google.maps.Map(document.getElementById('map'), {
// zoom : 4,
// center : myLatLng
// });
//
// var marker = new google.maps.Marker({
// position : myLatLng,
// map : map,
// title : 'Hello World!'
// });
// }

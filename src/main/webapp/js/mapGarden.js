function addGardenMarker(address, contentString) {
	console.log(address);
	if (address == "") {
		geocodeLatLng(geocoder, resultsMap, infowindow);
	}
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status === 'OK') {

			var infowindow = new google.maps.InfoWindow({
				content : contentString,
				maxWidth : 300
			});

			resultsMap.setCenter(results[0].geometry.location);
			var marker = new google.maps.Marker({
				map : resultsMap,
				position : results[0].geometry.location,
			});

			marker.addListener('click', function() {
				infowindow.open(resultsMap, marker);
			});
		} else {
			alert('Geocode was not successful for the following reason: '
					+ status);
		}
	});
}

function initMap() {
	console.log("youhouuuu");

	resultsMap = new google.maps.Map(document.getElementById('map'), {
		center : {
			lat : 48.80,
			lng : 2.45
		},
		zoom : 8
	});
	geocoder = new google.maps.Geocoder();
	infowindow = new google.maps.InfoWindow;

	document.getElementById('submit').addEventListener('click', function() {
		geocodeAddress();
	});
}

function geocodeAddress() {
	var address = document.getElementById('address').value;
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status === 'OK') {
			resultsMap.setCenter(results[0].geometry.location);
		} else {
			alert('Geocode was not successful for the following reason: '
					+ status);
		}
	});
}



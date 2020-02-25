function addGardenMarker(address) {
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status === 'OK') {
			resultsMap.setCenter(results[0].geometry.location);
			var marker = new google.maps.Marker({
				map : resultsMap,
				position : results[0].geometry.location
			});
		} else {
			alert('Geocode was not successful for the following reason: '
					+ status);
		}
	});
}
function initMap() {
	resultsMap = new google.maps.Map(document.getElementById('map'), {
		zoom : 8,
		center : {
			lat : 48.80,
			lng : 2.45
		}
	});
	
	geocoder = new google.maps.Geocoder();

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
			var marker = new google.maps.Marker({
				map : resultsMap,
				position : results[0].geometry.location
			});
		} else {
			alert('Geocode was not successful for the following reason: '
					+ status);
		}
	});
}



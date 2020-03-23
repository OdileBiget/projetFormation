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


function ajouterJardinPartage(jardinId){
	console.log("Je suis dans la fonction ajouter jardin")
//	var XhrObj = new XMLHttpRequest();
//	XhrObj.open("GET","http://localhost:8080/JardinSite/WSAjoutJardinPartage?jardinId=1", false);
//	XhrObj.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//	XhrObj.send("");
//	if(XhrObj.readyState == 4 && XhrObj.status == 200)
//		return XhrObj.responseText;
//	else
//		alert("erreur ajax");
	console.log("http://localhost:8080/JardinSite/WSAjoutJardinPartage?jardinId="+jardinId);
	$.get("http://localhost:8080/JardinSite/WSAjoutJardinPartage?jardinId="+jardinId, function(data) {
		alert("The paragraph was clicked.");
	});
}
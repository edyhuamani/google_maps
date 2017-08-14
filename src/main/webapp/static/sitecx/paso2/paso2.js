/**
 * 
 */
$(function() {

	var marker;
	
	$("#btnSiguiente").click(function() {
		irPasoSiguiente();
	});
	
	$("#btnRegresar").click(function() {
		irPasoAnterior();
	});

	function initMap() {

		 	var map = new google.maps.Map(document.getElementById('map'), {
	            center: {lat: -12.146467, lng: -76.979906},
	            mapTypeControl: false,
	            zoom: 15
	        });
		 	
		 	
		 	if ($("#txtLongitud").val().length === 0 && $("#txtLatitud").val().length === 0) {
	            if (navigator.geolocation) {
	                navigator.geolocation.getCurrentPosition(function (position) {
	                    var pos = {
	                        lat: position.coords.latitude,
	                        lng: position.coords.longitude
	                    };

	                    //infoWindow.setPosition(pos);
	                    map.setCenter(pos);
	                    //infoWindow.setPosition(pos);
	                    //infoWindow.setContent('Location found.');
	                    marker = new google.maps.Marker({
	                        map: map,
	                        draggable: true,
	                        animation: google.maps.Animation.DROP,
	                        position: pos
	                    });
	                    setMarkerListener(marker);
	                }, function () {
	                    handleLocationError(true, map);
	                });
	            } else {
	                // Browser doesn't support Geolocation
	                handleLocationError(false, map);
	            }
	        } else {

	            if (navigator.geolocation) {
	                navigator.geolocation.getCurrentPosition(function (position) {

	                    

	                    var pos2 = {
	                        lat: parseFloat(document.getElementById("txtLatitud").value),
	                        lng: parseFloat(document.getElementById("txtLongitud").value)
	                    };

	                    //infoWindow.setPosition(pos);
	                    map.setCenter(pos2);
	                    marker = new google.maps.Marker({
	                        map: map,
	                        draggable: true,
	                        animation: google.maps.Animation.DROP,
	                        position: pos2
	                    });
	                    setMarkerListener(marker);
	                }, function () {
	                    handleLocationError(true, map);
	                });
	            } else {
	                // Browser doesn't support Geolocation
	                handleLocationError(false, map);
	            }

	        }
		 
		    var input = document.getElementById('pac-input');
		    var searchBox = new google.maps.places.SearchBox(input);
		 
		 	map.addListener('bounds_changed', function () {
	            searchBox.setBounds(map.getBounds());
	        });
		 	
		 	
		 	searchBox.addListener('places_changed', function () {
	            var places = searchBox.getPlaces();
	            if (places.length === 1) {
	                var place = places[0];
	                var bounds = new google.maps.LatLngBounds();
	                if (place.geometry.viewport) {
	                    // Only geocodes have viewport.
	                    bounds.union(place.geometry.viewport);
	                } else {
	                    bounds.extend(place.geometry.location);
	                }
	                marker.setPosition(place.geometry.location);
	                $("#txtLatitud").val(place.geometry.location.lat());
	                $("#txtLongitud").val(place.geometry.location.lng());
	                map.fitBounds(bounds);
	            }
	        });
		 	

	}
	
	 function setMarkerListener(mark) {
	        mark.addListener('click', toggleBounce);
	        google.maps.event.addDomListener(mark, 'dragend', function () {
	            document.getElementById("txtLatitud").value = this.getPosition().lat();
	            document.getElementById("txtLongitud").value = this.getPosition().lng();
	        });
	 }

	
	 function handleLocationError(browserHasGeolocation, map) {
	        var infoWindow = new google.maps.InfoWindow({map: map});
	        infoWindow.setPosition(map.getCenter());
	        infoWindow.setContent(browserHasGeolocation ?
	                'Error: The Geolocation service failed.' :
	                'Error: Your browser doesn\'t support geolocation.');
	        var plantaSanJuan = new google.maps.LatLng(-12.146467, -76.979906);
	        marker = new google.maps.Marker({
	            map: map,
	            draggable: true,
	            animation: google.maps.Animation.DROP,
	            position: plantaSanJuan
	        });
	        setMarkerListener(marker);
	 }
	 
	 google.maps.event.addDomListener(window, 'load', initMap);
	 
	 function toggleBounce() {
	        if (marker.getAnimation() !== null) {
	            marker.setAnimation(null);
	        } else {
	            marker.setAnimation(google.maps.Animation.BOUNCE);
	        }
	 }
});

function irPasoAnterior(){
	window.location.href = 'home.htm';
}

function irPasoSiguiente(){
	window.location.href = 'paso3.htm';
}
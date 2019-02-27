<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Google Map Hello World Example</title>
<style type="text/css">
div#map_container{
	width:100%;
	height:350px;
}
</style>
<script type="text/javascript" 
   src="http://maps.googleapis.com/maps/api/js?sensor=false">

</script>
 
<script type="text/javascript">
  function loadMap() {
      var latlng = new google.maps.LatLng(<%=LAT%>, <%=LNG%>);
    var myOptions = {
      zoom: 15,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_container"),myOptions);
 
    var marker = new google.maps.Marker({
      position: latlng, 
      map: map, 
      title:"my hometown, Tehran, Iran!"
    }); 
 
  }
</script>
  <script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD92HBNqZsd-yv1IdeksuilDCRS7zxS8zY&callback=initMap"
  type="text/javascript"></script>
</head>
 
<body onload="loadMap()">
<div id="map_container"></div>
</body>
 
</html>

var image = document.getElementsByClassName("highlight_image");
var destacadas = document.getElementById("destacadas");
var imageButton = ("<button></button>");
var imageParent = document.getElementsByClassName("highlight_property_thumbnail");

var test = function() {
	console.log("appendChild..");
}

for(var i = 0; i < image.length; i++) {
	image[i].onclick = test;
}
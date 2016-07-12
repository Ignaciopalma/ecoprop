var image = document.getElementsByClassName("highlight_image");

for (i = 0; i < image.length; i++) { 
    var eachImage = document.getElementsByClassName("highlight_image")[i];
	var imageButton = document.createElement("button");
	var text = document.createTextNode("VER PROPIEDAD");

	var run = function() {
		imageButton.appendChild(text);
		imageButton.className = "ver-propiedad";
		this.parentNode.insertBefore(imageButton, this.nextSibling);
	}

	var stop = function() {
		imageButton.removeChild(text);
		this.parentNode.removeChild(imageButton);
	}

	eachImage.onmouseover = run;
	eachImage.onmouseout = stop;
}
function openNav() {
	var icon = document.getElementbyId("navi");
	if (icon.className === "navi") {
		icon.className += "menujs";
		document.getElementbyId("triline").innerHTML = "&Cross;";
	}
	else {
		icon.className = "navi";
		document.getElementbyId("triline").innerHTML = "&#9776;";

	}
	}


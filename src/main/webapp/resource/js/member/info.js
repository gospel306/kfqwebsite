function test(no) {
	for (i = 1; i <= 4; i++) {
		if (no == i)
			document.getElementById('div' + i).style.display = 'block';
		else
			document.getElementById('div' + i).style.display = 'none';
	}
}

function show_layer(div_name) {
	document.all.div_01.style.display = "none";
	document.all.div_02.style.display = "none";
	document.all.div_03.style.display = "none";
	document.all.div_04.style.display = "none";
	document.all.div_05.style.display = "none";
	switch (div_name) {
	case '1':
		document.all.div_01.style.display = "";
		break;
	case '2':
		document.all.div_02.style.display = "";
		break;
	case '3':
		document.all.div_03.style.display = "";
		break;
	case '4':
		document.all.div_04.style.display = "";
		break;
	case '5':
		document.all.div_05.style.display = "";
		break;
	}
}

function show_content(div_name) {
	document.all.div_one.style.display = "none";
	document.all.div_two.style.display = "none";
	switch (div_name) {
	case '1':
		document.all.div_one.style.display = "";
		break;
	case '2':
		document.all.div_two.style.display = "";
		break;
	}
}

function show_ms(div_name) {
	document.all.div_ms_one.style.display = "none";
	document.all.div_ms_two.style.display = "none";
	switch (div_name) {
	case '1':
		document.all.div_ms_one.style.display = "";
		break;
	case '2':
		document.all.div_ms_two.style.display = "";
		break;
	}
}

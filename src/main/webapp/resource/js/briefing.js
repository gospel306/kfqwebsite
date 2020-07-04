$(document).ready(function() {
	var myFiles = [];
	$("#files").on("change",function(e) {
		var files = e.target.files, file;
		for (var i = 0; i < files.length; i++) {
			file = files[i];
			myFiles.push(file);
			$(
				'<span class="pip">'
				+ '<span class="remove">X</span>'
				+ '<img class="imageThumb" '
				+ 'src="'
				+ URL.createObjectURL(file) + '" '
				+ 'title="' + file.name + '"/>'
				+ '<br/>' + '</span>').insertAfter(
				"#files").find(".remove").click(
				removeFile.bind(null, file));
		}
		updateCounters();
	});

	$('form').on('submit', upload);

	function removeFile(file, evt) {
		$(evt.target).parent(".pip").remove();
		myFiles.splice(myFiles.indexOf(file), 1);
		updateCounters();
	}

	function updateCounters() {
		$('#counter').text(myFiles.length + ' files selected');
	}

	function upload() {
		var fd = new FormData();
		var title = $("#title").val();
		fd.append("title",title);
		for (var i = 0; i < myFiles.length; i++) {
			fd.append('files[]', myFiles[i]);
		}
		console.log(fd);
		var xhr = new XMLHttpRequest();
		xhr.open('POST', '../../contestfile.do');
		xhr.send(fd);
	}
	$("#submit").click(function(){
		var fd = new FormData();
		fd.append("title",$("#title").val());
		fd.append("contesttype", document.location.pathname.split("/")[2]);
		fd.append("company",$("#company").val());
		fd.append("service",$("#service").val());
		fd.append("sector",$('input[name="sector"]:checked').val());
		fd.append("idea",$("#idea").val());
		fd.append("briefing",$("#briefing").val());
		for (var i = 0; i < myFiles.length; i++) {
			fd.append('files[]', myFiles[i]);
		}
		$.ajax({
			type: 'POST',
			url: "../../briefing.do",
			data: fd,
			processData: false,
			contentType: false,
			success: function(result){
				location.href = "price";
			}
		});
	});
});
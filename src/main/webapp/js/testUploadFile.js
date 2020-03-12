/**
 * 
 */
window.addEventListener('load', function() {
	document.querySelector('input[type="file"]').addEventListener(
			'change',
			function() {
				if (this.files && this.files[0]) {
					var img = document.querySelector('div.modal img'); // $('img')[0]
					img.src = URL.createObjectURL(this.files[0]); // set src
					// to blob
					// url
					var sPath = img.src;
					var sFileName = img.src.substring(
							img.src.lastIndexOf("/") + 1, img.src.length);
					document.getElementById("#imgName").value = 'Name';
					$("#imgName").attr('value', 'Name');
					$("#imgPath").attr('value', 'path');

					img.onload = imageIsLoaded;

				}
			});
});

function test() {
	document.getElementById("#imgName").value = 'Name';
}

function imageIsLoaded() {
	alert(this.src); // blob url
	// update width and height ...
}

$('.file-upload').file_upload();

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();

		var img = document.querySelector("div.modal img");
		img.src = URL.createObjectURL(this.files[0]);

		reader.onload = function(e) {

			// $('#blah').attr('src', e.target.result);

			// $("#imgName").attr('value', 'Name');
			$("#imgPath").attr('value', e.target.result);

		};

		reader.readAsDataURL(input.files[0]);
	}
}

$('.carousel').carousel()

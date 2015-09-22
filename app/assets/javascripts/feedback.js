$(function() {
	$("#feedback-tab").click(function() {
		$("#feedback-form").toggle("slide");
	});
});

$(document).ready(function() {
  setTimeout(function() {
    $('.alert').slideUp();
  }, 5000);
});

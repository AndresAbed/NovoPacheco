	// Contact form
	var form = $('#main-contact-form');
	form.submit(function(event){
		event.preventDefault();
		var form_status = $('<div class="form_status"></div>');
		$.ajax({
			url: $(this).attr('action'),
			type: "POST",
			data: {
				nombre: $("input[name=nombre]").val(),
				email: $("input[name=email]").val(),
				asunto: $("input[name=asunto]").val(),
				mensaje: $("textarea[name=mensaje]").val()
			},
			beforeSend: function(){
				form.prepend( form_status.html('<p><i class="fa fa-spinner fa-spin"></i> Enviando...</p>').fadeIn() );
			}
		}).done(function(data){
			console.log(data);
			form_status.html('<p class="text-success">' + data.message + '</p>').delay(3000).fadeOut();
		});
	});

	
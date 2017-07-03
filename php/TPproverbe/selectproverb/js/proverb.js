$('#validate').on('click', function(e){
	e.preventDefault();
	var idProverb = $('#proverbList').val();
	
	$.ajax({
	  type: 'GET',
	  url: '/projet/php/TPproverbe/selectproverb/ajaxproverb.php',
	  // data to be added to query string:
	  data: { id: idProverb },
	  // type of data we are expecting in return:
	  dataType: 'json',
	  timeout: 300,
	  // context: $('#detailsPays'),
	  success: function(data){
	    var $detailsProverb = $('#detailsProverb');
	    var $origineProverb = $('#origineProverb');
	    $detailsProverb.find('.corps').html('<strong>' + data.corps + '</strong>');
	    $origineProverb.find('.origine').html('<em>' + data.origine + '</em>');
	  },
	  error: function(xhr, type){
	    alert('Ajax error!')
	  }
	})
});
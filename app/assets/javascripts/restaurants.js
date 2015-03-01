$(document).on('ready page:load', function() {
	$('.search-form').submit(function(event) {
		event.preventDefault();
		var searchValue = $('#search').val();

		$.getScript( '/restaurants?search=' + searchValue, '/categories?search=' + searchValue);
		return false;
	});
});
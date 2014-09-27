
var container = $('#review-list')
var scrollTo = $('#review-list').last();

container.scrollTop(
	scrollTo.offset().top - container.offset().top + container.scrollTop()
	);
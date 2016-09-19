// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var button = $("#button");
var query = $("#flickr_id");


var validate = function () {
    if (query.val().trim() !== '') {
        button.removeAttr('disabled');
    } else {
        button.attr('disabled', 'disabled');
    }
};
// query.on('keyup click change', validate);
$('html').bind('input', function(e) {
    if (e.target.id === 'flickr_id') {
        validate();
    }
});
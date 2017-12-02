/* global $ */
$(document).ready();
//TODO: fix only occurs once
$('div').mouseenter(function() {
    $('.button').fadeTo('fast', 0.8);
});
$('div').mouseleave(function() {
    $('.button').fadeTo('fast', 1);
});





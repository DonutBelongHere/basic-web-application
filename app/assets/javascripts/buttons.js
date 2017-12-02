/* global $ */
$(document).ready(function() {
    $('div').mouseenter(function() {
        $('.button').fadeTo('fast', 0.8);
    });
    $('div').mouseleave(function() {
       $('.button').fadeTo('fast', 1) 
    });
});
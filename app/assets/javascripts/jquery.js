/* global $ */
$(document).ready(function() {
   $('div').mouseenter(function() {
       $('div').fadeTo('fast', 0.7);
   });
   $('div').mouseleave(function() {
       $('div').fadeTo('fast', 1);
   });
});
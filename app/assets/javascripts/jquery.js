/* global $ */
$(document).on('turbolinks:load', function() {
   $('div#button').mouseenter(function() {
       $('div#button').fadeTo('fast', 0.7);
   });
   $('div#button').mouseleave(function() {
       $('div#button').fadeTo('fast', 1);
   });
   $('#menu').accordion({collapsible: true, active: 'none'});
});
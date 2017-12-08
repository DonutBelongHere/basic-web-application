/* global $ */
$(document).on('turbolinks:load', function() {
   //accordion view on home page for ease of viewing many albums
   $('#menu').accordion({collapsible: true, active: 'none'}, "option", "autoHeight", false );
   //fade buttons when mouseover, restore when mouseleave
   //separate functions for each button to prevent all buttons fading when only one mouseover
   $('div#button').mouseenter(function() {
       $('div#button').fadeTo('fast', 0.7);
   });
   $('div#button').mouseleave(function() {
       $('div#button').fadeTo('fast', 1);
   });
   $('div#editbutton').mouseenter(function() {
       $('div#editbutton').fadeTo('fast', 0.7);
   });
   $('div#editbutton').mouseleave(function() {
       $('div#editbutton').fadeTo('fast', 1);
   });
   $('div#backbutton').mouseenter(function() {
       $('div#backbutton').fadeTo('fast', 0.7);
   });
   $('div#backbutton').mouseleave(function() {
       $('div#backbutton').fadeTo('fast', 1);
   });
   $('div#newbutton').mouseenter(function() {
       $('div#newbutton').fadeTo('fast', 0.7);
   });
   $('div#newbutton').mouseleave(function() {
       $('div#newbutton').fadeTo('fast', 1);
   });
   //dialog boxes for notices and alerts to make it easier for user to see them
   $( '#notice' ).dialog();
   $( '#alert' ).dialog();
   //form validation
   $('#form').validate();
});
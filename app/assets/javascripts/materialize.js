$(document).ready(function(){
  $('select').formSelect();
  $('.sidenav').sidenav();

});

$(document).on('turbolinks:load', function() {
  $('select').formSelect();
  $('.sidenav').sidenav();

 });

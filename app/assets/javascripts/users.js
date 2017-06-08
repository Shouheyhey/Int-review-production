//Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener('turbolinks:load', function() {
  $('#tab-menu li').on('click', function(){
    if($(this).not('selected')){
      $(this).addClass('selected').siblings('li').removeClass('selected');
      var index = $('#tab-menu li').index(this);
      $('#tab-box div').eq(index).addClass('selected').siblings('div').removeClass('selected');
    }
  });
});

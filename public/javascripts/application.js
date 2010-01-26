// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function($){//on document ready
  //autocomplete
  $('input.autocomplete').each(function(){
    var $input = $(this);
    $input.autocomplete($input.attr('autocomplete_url'));
   });
});


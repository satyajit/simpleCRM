// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ajaxSend(function(event, request, settings) {
if (typeof(AUTH_TOKEN) == "undefined") return;
settings.data = settings.data || "";
settings.data = (settings.data ? "&" : "") + "authenticity_token=" +encodeURIComponent(AUTH_TOKEN);
});
//Adding javascript request type
jQuery.ajaxSetup({
  'beforeSend':function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")},
});


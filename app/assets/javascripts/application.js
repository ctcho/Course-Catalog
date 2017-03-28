// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

$(function() {
  $("#search_form").on("change", function() {
    $.get($("#search_form").attr("action"), $("#search_form").serialize(), null, "script");
  });
});

//$(function() {
//  $("#subject_name input").on("change", function() {
  //  $.ajax({
    //  type: "GET",
      //url: "pages/results",
      //data: { $('option:selected', this).val() },
      //dataType: "script"});
  //});
//});

//$(document).ready ->
//  $("search_form").on("change", )

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require popper
//= require bootstrap-sprockets
//= require cocoon

$(document).on('turbolinks:load', function() {
   $(function() {
   function check_to_hide_or_show_add_link() {
     if ($('#guard_ext_file .nested-fields:visible').length == 1) {
       $('#guard_ext_file .links a').hide();
     } else {
       $('#guard_ext_file .links a').show();
     }
   }

   $('#guard_ext_file').on('cocoon:after-insert', function() {
     check_to_hide_or_show_add_link();
   });

   $('#guard_ext_file').on('cocoon:after-remove', function() {
     check_to_hide_or_show_add_link();
   });

   check_to_hide_or_show_add_link();     
 });

  $(function() {
   function check_to_hide_or_show_add_link() {
     if ($('#emp_references .nested-fields:visible').length == 3) {
       $('#emp_references .links a').hide();
     } else {
       $('#emp_references .links a').show();
     }
   }

   $('#emp_references').on('cocoon:after-insert', function() {
     check_to_hide_or_show_add_link();
   });

   $('#emp_references').on('cocoon:after-remove', function() {
     check_to_hide_or_show_add_link();
   });

   check_to_hide_or_show_add_link();     
 });

$('#main_file_pagibig_number').keyup(function(){
    $(this).val($(this).val().replace(/(\d{4})\-?(\d{4})\-?(\d{4})/,'$1-$2-$3'))
});

$('#main_file_sss_number').keyup(function(){
    $(this).val($(this).val().replace(/(\d{2})\-?(\d{7})\-?(\d{2})/,'$1-$2-$3'))
});

$('#main_file_guard_ext_file_attributes_badge_number').keyup(function(){
    $(this).val($(this).val().replace(/(\d{2})\-?(\d{7})\-?(\d{2})/,'$1-$2-$3'))
});

$('#main_file_tin_number').keyup(function(){
    $(this).val($(this).val().replace(/(\d{3})\-?(\d{3})\-?(\d{3})\-?(\d{4})/,'$1-$2-$3-$4'))
});

$('#main_file_tin_number').keyup(function(){
    $(this).val($(this).val().replace(/(\d{3})\-?(\d{3})\-?(\d{3})/,'$1-$2-$3'))
});

$('#main_file_philhealth').keyup(function(){
    $(this).val($(this).val().replace(/(\d{2})\-?(\d{9})\-?(\d{1})/,'$1-$2-$3'))
});

})
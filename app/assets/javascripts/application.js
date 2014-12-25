// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require tinymce-jquery
//= require cocoon
//= require_tree .

$(document).ready(function() {

    tinyMCE.init({
        width: '400px',
        mode : "specific_textareas",
        editor_selector : "tinymce_editor",
        theme: 'advanced',
        plugins: "uploadimage",
        theme_advanced_buttons1 : "forecolor,backcolor,bullist,numlist,undo,redo,outdent,indent,hr,link,unlink,anchor,uploadimage,charmap,cleanup,removeformat,code",
    });

});



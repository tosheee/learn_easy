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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

document.addEventListener("keyup", function(event) {
    event.preventDefault();
    if (event.keyCode == 13) {
        check_text()
    }
});

function view_translations() {
    document.getElementById('view-text-hidden').style.visibility = 'visible';
}

function check_text() {
    var hidden_word  = document.getElementById('view-text-hidden').innerHTML.replace(/\s/g,'');
    var text_message = document.getElementById('text-message');
    var enter_word   = document.getElementById('enter-text');
    if (hidden_word == enter_word.value) {

        text_message.innerHTML = "Exelent";

        location.reload();
    } else {
        text_message.innerHTML = "Check what is written";
        enter_word.value = '';
        view_translations()
    }
}



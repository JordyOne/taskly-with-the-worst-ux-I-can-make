//= require jquery
//= require jquery_ujs
//= require_tree .

$(function () {
    $("button").on({
        mouseover: function () {
            $(this).css({
                left: (Math.random() * 200) + "px",
                top: (Math.random() * 200) + "px",
            });
        }
    });
});


$(function () {
    $("#login-button").click(function () {
        alert("Uh-oh, You're and idiot for clicking this, but it's your funeral")
    });
});

$(function () {
    $(".logout").on({
        mouseover: function () {
            $(this).hide(5, function () {
                (alert("You were too slow, Sorry."))
            });
        }
    });
});

$(function () {
    $("task-list").toggle("explode");
});


//$(function () {
//    $("signin-form.div").on({
//        mouseover: function () {
//            $(this).hide(default: 500)
//        }
//    });
//});
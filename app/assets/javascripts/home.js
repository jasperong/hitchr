

$(document).ready(function() {
    console.log("I'm here on the home!");


    $("html").niceScroll({
        cursorcolor:"rgba(30,30,30,.5)",
        zindex:999,
        scrollspeed: 1000,
        mousescrollstep:100,
        cursorborder:"0px solid #fff",
    });

    $('.parallax-window').parallax({
    naturalWidth: 600,
    naturalHeight: 400
  });


  });

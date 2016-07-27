

$(document).ready(function() {


    $("html").niceScroll({
        cursorcolor:"rgba(30,30,30,.5)",
        zindex:999,
        scrollspeed: 500,
        mousescrollstep:100,
        cursorborder:"0px solid #fff",
    });

    $('.parallax-window').parallax({
    naturalWidth: 600,
    naturalHeight: 400
  });


  $('#my-video').backgroundVideo({
    $videoWrap: $('#video-wrap'),
    $outerWrap: $('#outer-wrap'),
    preventContextMenu: true,
    pauseVideoOnViewLoss: true,
    parallaxOptions: {
        offset: 60,
        effect: 1.5
    }
});

  });

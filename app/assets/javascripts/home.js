

$(document).ready(function() {




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
          effect: 1.8
      }
    });

    $('.search-button').on('click', function (){

      $('.placeholder-info').hide();

      $('html, body').animate({
        scrollTop: $('#content_2').offset().top }, 1000);

      });


  });

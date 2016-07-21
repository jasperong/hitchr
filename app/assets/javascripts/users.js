$(function() {


  $(".rateYo").rateYo({
    rating: 3,
    halfStar: true,
    multiColor: {
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    }
  });

  $('svg').on('click', function(){
     var width = $(this).parent();
     console.log(parseInt(width.css('width')));
   });

   $('svg').on('click', function(){
     var width = $(this).parent();
     console.log(width);
     var ratingNumber = parseInt(width.css('width'))/16/2;
     console.log(ratingNumber);

     $('#review_rating').val(ratingNumber);

    //  $.ajax({
    //    url: $(this).attr('action'),
    //    method: $(this).attr('method'),
    //    data: {rating: ratingNumber},
    //    dataType: 'JSON'
    //  });

   });

});
// 'input[name=rating]'

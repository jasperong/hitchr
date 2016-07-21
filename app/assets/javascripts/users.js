$(function() {


  $(".rateYo").rateYo({
    rating: 3,
    halfStar: true,
    multiColor: {
      "startColor": "#FF0000", //RED
      "endColor"  : "#00FF00"  //GREEN
    }
  });

  // get rating
  $('svg').on('click', function(){
    var width = $(this).parent();
    console.log(parseInt(width.css('width')))
  });

});
// 'input[name=rating]'

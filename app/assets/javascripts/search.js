$(function() {
  $('#start_location').geocomplete({
    country: "CA",
    types: ["(cities)"]
  });
  $('#end_location').geocomplete({
    country: "CA",
    types: ["(cities)"]
  });

  $('.search-button').on('click', function(e) {
    e.preventDefault();

    $.ajax({
      url: $(this).attr('action'),
      method: 'get',
      data: {
        start_location: $('#start_location').val(),
        end_location: $('#end_location').val()
      },
      dataType: 'html'
    }).done(function(responseData) {
      $('.ride-list').html('');
      $('.ride-list').append(responseData)
    });
  });
});

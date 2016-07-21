$(function() {
  // $('.search').autocomplete({
  //   source: $.ajax({
  //     url: "https://maps.googleapis.com/maps/api/place/autocomplete/",
  //     method: "get",
  //     data: {
  //       input: "json",
  //       key: apiKey,
  //       country: "CA",
  //       type: "locality"
  //       },
  //     dataType: "json"
  //   }).done(function(responseData) {
  //     console.log(responseData);
  //   });
  // });
  $('#start_location').geocomplete({
    country: "CA",
    types: ["(cities)"]
  });
  $('#end_location').geocomplete({
    country: "CA",
    types: ["(cities)"]
  });
  });

});

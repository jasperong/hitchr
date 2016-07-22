$(function() {
  $('#start_location').geocomplete({
    country: "CA",
    types: ["(cities)"]
  });
  $('#end_location').geocomplete({
    country: "CA",
    types: ["(cities)"]
  });
});

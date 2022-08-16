$(document).on('turbolinks:load', function() {
  return $('#event_position_desc').autocomplete({
    source: $('#event_position_desc').data('autocomplete-source')
  });
});

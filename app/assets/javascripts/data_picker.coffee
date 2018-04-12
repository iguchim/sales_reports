ready = ->
  dateFormat = 'yy/mm/dd';
  $('.date-picker').datepicker(
    dateFormat: dateFormat,
    minDate: null
  );
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
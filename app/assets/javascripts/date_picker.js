var date_picker;
date_picker = function() {
  $('.date-picker').daterangepicker(
  {
    locale: {
      format: 'YYYY-MM-DD HH:mm'
    },
    timePicker: true,
    timePickerIncrement: 10,
    singleDatePicker: true,
    showDropdowns: true
  }
  // function(start, end, label) {
  //     $('.start_hidden').val(start.format('YYYY-MM-DD HH:mm'));
  //     $('.end_hidden').val(end.format('YYYY-MM-DD HH:mm'));
  // }
  );
  
};
$(document).on('turbolinks:load', date_picker);

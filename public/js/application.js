$(document).ready(function() {
  $('form#add_menu').on('submit', function(event) {
    event.preventDefault()

    $.ajax({
      url: '/menus/create/new',
      type: 'POST',
      data: form_data
    }).done(function(server_data) {
      $('div#menus').html('').html(server_data)
    }).fail(function() {
      console.log('failed')
    })
  })
});

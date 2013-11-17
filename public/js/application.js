$(document).ready(function() {
  $('form#add_menu').on('submit', function(event) {
    event.preventDefault()

    var form_data = $(this).serialize()

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

  $('form#add_item').on('submit', function(event) {
    event.preventDefault()

    var form_data = $(this).serialize()

    $.ajax({
      url: '/item/create/new',
      type: 'POST',
      data: form_data
    }).done(function(server_data) {
      $('div#items').html('').html(server_data)
    }).fail(function() {
      console.log('failed')
    })
  })
});

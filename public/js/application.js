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

  $('select#update_menu_item_list').on('change', function() {
    var menu_id = $(this).attr('data-id')
    var data = $(this).serialize()

    $.ajax({
      url: '/menus/' + menu_id + '/update',
      type: 'PUT',
      data: data
    }).done(function(server_data) {
      $('div#items_in_menu').html('').html(server_data)
    }).fail(function() {
      console.log('failed')
    })
  })

  $('a.delete').on('click', function(event) {
    event.preventDefault()

    var menu_id = $(this).attr('data-delete')

    $.ajax({
      url: '/item/' + menu_id + '/delete',
      type: 'DELETE',
      success: {submit: true}
    }).done(function(server_data) {
      $('div#items_in_menu').html('').html(server_data)
    }).fail(function() {
      console.log('failed')
    })
  })
});

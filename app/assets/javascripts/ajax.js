
function addNewBagFormListener() {
  $('.new_bag').on('submit', addNewBag);
}

function addRetrieveBagFormListener() {
  $('.new_ticket').on('submit', retrieveBag);
}


function addNewBag() {
  event.preventDefault();
  console.log("clicked new bag form");
  var $form = $(this)
  var data = $(this).serialize()
  var url = $form.attr('action')
  debugger

  var request = $.ajax({
    url: url,
    type: 'post',
    data: data,
    // dataType:
  })

  request.done(function(response) {
    console.log("response to add bag");
    console.log(response);
    // extract this to non-anonymous function
  })
}

function retrieveBag() {
  event.preventDefault();
  console.log("clicked retrieve ticket form");
  var $form = $(this)
  var data = $(this).serialize()
  var url = $form.attr('action')
  debugger

  var request = $.ajax({
    url: url,
    type: 'put',
    data: data,
    // dataType:
  })

  request.done(function(response) {
    console.log("response to retrieve bag");
    console.log(response);
    // extract this to non-anonymous function
  })
}


$(document).ready(function() {
  addNewBagFormListener();
  addRetrieveBagFormListener();
})
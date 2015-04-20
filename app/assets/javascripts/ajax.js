$(document).ready(function() {
  addNewBagFormListener();
  addRetrieveBagFormListener();
})

function addNewBagFormListener() {
  $('.new-bag').on('submit', addNewBag);
}

function addNewBag() {
  // Should this function use callback promises instead
  // of just being a wrapper for 3 different AJAX calls?
  createBag();
  // addBagToLocker();
  // createTicket();
}

function createBag() {
  var request = $.ajax({
    url: url,
    type: 'post',
    data: data,
    // dataType:
  })

  request.done(function(response) {
    console.log("response");
    // extract this to non-anonymous function
  })
  // .then(bagCreated, bagFailedToCreate)
  // leaving the then here as reminder to consider callback
  // .then(function(value) {}, function(reason) {});
}

// function addBagToLocker() {
//   var request = $.ajax({
//     url: url,
//     type: 'post',
//     data: data,
//     // dataType:
//   })

//   request.done(function(response) {
//     console.log("response");
//     // extract this to non-anonymous function
//   })
// }
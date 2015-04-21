
function addNewBagFormListener() {
  $('.new_bag').on('submit', addNewBag);
}

function addRetrieveBagFormListener() {
  $('.ticket-list').on('click', '.redeem-ticket', retrieveBag);
}


function addNewBag() {
  event.preventDefault();
  console.log("clicked new bag form");
  var $form = $(this)
  var data = $(this).serialize()
  var url = '/tickets'
  // debugger

  var request = $.ajax({
    url: url,
    type: 'post',
    data: data,
    // dataType:
  })

  request.done(function(response) {
    var newTicket = buildTicket(response);
    addTicketToDOM(newTicket);
  })
}

function buildTicket(response) {
  var newTicket = "<div class='ticket' id=" + response.ticket_id + "><p><span class='ticket-title'>Ticket #" + response.ticket_id + "</span><br>" + "Bag #" + response.bag_id + " is in Locker " + response.locker_id + "<button class='redeem-ticket'>Redeem Ticket</button></p></div>"
    console.log(newTicket);
    return newTicket;
}

function addTicketToDOM(ticket) {
  $('.ticket-list').append(ticket);
}

function retrieveBag() {
  event.preventDefault();
  console.log("clicked redeem ticket button");
  var ticketId = $(this).closest('div').attr('id')
  var url = 'http://localhost:3000/tickets/' + ticketId

  var request = $.ajax({
    url: url,
    type: 'put',
    data: {ticket_id: ticketId},
    // dataType:
  })

  request.done(function(response) {
    var ticketId = response.ticket_id
    var ticket = document.getElementById(ticketId)
    // remove ticket div from DOM
    console.log(ticket);
    ticket.remove();
    // extract this to non-anonymous function
  })
}


$(document).ready(function() {
  addNewBagFormListener();
  addRetrieveBagFormListener();
})
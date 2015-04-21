
function addNewBagFormListener() {
  $('.new_bag').on('submit', addNewBag);
}

function addRetrieveBagFormListener() {
  $('.ticket-list').on('click', '.redeem-ticket', retrieveBag);
}


function addNewBag() {
  event.preventDefault();
  var $form = $(this);
  var data = $form.serialize();
  var url = '/tickets';

  var request = $.ajax({
    url: url,
    type: 'post',
    data: data
  })

  request.done(function(response) {
    var newTicket = buildTicket(response);
    addTicketToDOM(newTicket);
  })
}

function buildTicket(response) {
  var newTicket = "<div class='ticket' id=" + response.ticket_id + "><p><span class='ticket-title'>Ticket #" + response.ticket_id + "</span><br>" + "Bag #" + response.bag_id + " is in Locker " + response.locker_id + "<button class='redeem-ticket'>Redeem Ticket</button></p></div>"
  return newTicket;
}

function addTicketToDOM(ticket) {
  $('.ticket-list').append(ticket);
}

function retrieveBag() {
  event.preventDefault();

  var ticketId = $(this).closest('div').attr('id')
  var url = 'http://localhost:3000/tickets/' + ticketId

  var request = $.ajax({
    url: url,
    type: 'delete',
    data: {ticket_id: ticketId}
  })

  request.done(function(response) {
    var ticket = findTicketToRemove(response);
    removeTicket(ticket);
    // remove ticket div from DOM
  })
}

function findTicketToRemove(data) {
  var ticketId = data.ticket_id;
  var ticket = document.getElementById(ticketId);
  return ticket;
}

function removeTicket(ticket) {
  ticket.remove();
}

$(document).ready(function() {
  addNewBagFormListener();
  addRetrieveBagFormListener();
})
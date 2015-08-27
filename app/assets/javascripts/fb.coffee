# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  initialize = () ->
    options = {
      language: 'en-GB',
      types: ['(cities)'],
      componentRestrictions: { country: "uk" }
    }

    input = $('.address-search')
    autocomplete = new google.maps.places.Autocomplete(input[0], options)

  google.maps.event.addDomListener(window, 'load', initialize)
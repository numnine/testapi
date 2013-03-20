//= require jquery
//= require jquery_ujs
//= require bootstrap.min
//= require main

$.ajax
  url: "#{window.location.protocol}//connect.facebook.net/en_US/all.js"
  dataType: 'script'
  cache: true

window.fbAsyncInit = ->
  FB.init(appId: '514329408608772', cookie: true)

  $('#fblogin').click (e) ->
    FB.login (response) ->
    	console.log response

  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      FB.logout() if response.authResponse
    true
var Facebook = function() {
  var login = function() {
    FB.login(function(response) {
      if (response.authResponse) {
        FB.api('/me', function(response) {
          $('#me').text(response.name);
        });
      }
    });
  }

  var initialize = function() {
    $('#login').click(function() {
      login();
    });
  };

  return {
    initialize: initialize
  }
}();

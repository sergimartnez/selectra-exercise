$( document ).ready(function() {
  $("button-open-close").on('click', function(event) {
    event.preventDefault();
    console.log("Checking if it is open or close!");
    var info = {
      id: $('.location-id').text()
    };
    $.ajax({
      type: 'POST',
      url: "http://localhost:3000/location/status",
      data: info,
      success: function (data) {
        console.log("Ok!");
        $('.is-open').text(data.status)
      },
      error: function(error) {
        console.log(error);
        console.log("Error!");
      }
    });
  });
});
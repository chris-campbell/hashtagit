$('.btn').click(function() {
  var result = $('#search').val();
  $.get("https://api.ritekit.com/v1/stats/multiple-hashtags?tags=" + result +
            "&client_id=71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b",
            function( data ) {
              console.log( data);
            });
});

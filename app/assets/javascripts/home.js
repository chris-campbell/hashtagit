function hashHistoryQuery() {

  var hashTag = $('#search').val();

  $.get("https://api.ritekit.com/v1/stats/history/" + hashTag + "?tags=" +
            "&client_id=71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b",
            function( data ) {
              // for (var i in data.data[0]){
                // console.log(data.data[1][i]);
                console.log(data.data);
              // }
              // console.log(data.data[0]);

            //   var main = data.stats[0];
            //
            //   $.each(main, function(index, value) {
            //     if(!newarr.includes(index)) {
            //       newarr.push(value);
            //       $.unique(newarr);
            //     }
            //   });
            });
            // console.log(newarr);
}


$('.btn').click(function() {
  hashHistoryQuery();
});


// function tableRowFill(item) {
//   var rowItem =
//   '<tr>'
//     <td>' + item + '</td>
//   </tr>';
// }

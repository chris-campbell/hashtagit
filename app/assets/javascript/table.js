
// $('.results-area').hide();
// function appendParamToUrl() {
//   var pages = '';
//   var term = $('#query').val();
//   window.location = window.location.href + '?search=' + term;
// }

// $( document ).ready(function() {
//     $('.submit').click(function(){
//         console.log(gon.stats);
//     })

// });




// function tableGenerate() {

//     $('#main-results').DataTable({
    	
//     	"data": gon.queries.data,
    		
//       	"columns": [
//       	    {   
//   		      "data": "date",
//       		  render: function( value, type, row ) {
//       		      return formatDate(value);
//       		  }
//     		},
//     		{
//     		  "data": "retweets",
//     		   render: function( data, type, row ) {
//     		      return formatResults( data );
//     		  }
//     		},
//     		{ 
//     		  "data": "tweets",
//     		   render: function( data, type, row ) {
//       		     return formatResults( data );
//     		   }
//     		},
//     		{
//               "data": "exposure",
// 	          render: function( data, type, row ) {
//                  return formatResults( data );
// 	          }
//     		}
//     	   ]
//     });
// }

// function realtimeQuery() {
//     var value;
//     var api = '71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b';
//     var apiUrl = 'https://api.ritekit.com/v1/stats/multiple-hashtags';
//     value = $.ajax({
//         url: apiUrl + "?tags=wwe&client_id=" + api,
// 	async: false
// 	}).responseJSON.stats;
//     return value;
// }

// function currentTime() {
//     var time = new Date();
//     return time.getHours() + ':' + time.getMinutes();
// }

// function formatResults(value) {
//     let result;
    
//     if ( value == 0 ) {
//         return "N/A";
//     }
   
//     if ( value < 1000 && value > 0) {
// 	    return value;
//     }
    
//     if ( value > 1000 && value < 1000000 ) {
//         result = value / 1000;
//         return result.toFixed(1) + 'K';
//     }
    
//     if ( value > 1000000 ) {
//         result = value / 1000000;
//         return result.toFixed(1) + "M";
//     }
  
//     if ( value < 1000 && value > 0) {
//         return value;
//     }
    
// }

// function tweetsSum() {
//   var table = $('#main-results').DataTable();
//   return table.column( 1 ).data().sum();
// }

// function retweetsSum() {
//   var table = $('#main-results').DataTable();
//   return table.column( 2 ).data().sum();
// }

// function exposureSum() {
//   var table = $('#main-results').DataTable();
//   return table.column( 3 ).data().sum();
// }

// function formatDate(dateValue) {
//     var months = ['Jan', 'Feb', 'Mar', 'Apr',
//   		  'May', 'Jun', 'Jul', 'Aug',
//   		  'Sept', 'Oct', 'Nov', 'Dec'];
  		          
//     var date2 = new Date(dateValue);
//     return months[ date2.getMonth() ] + " " + date2.getDate() +
//           ", " + date2.getFullYear();
// }







$(document).ready( function () {
    $(".btn-2").click(function() {
        var userInput = $('#search').val();
        tableGenerate(userInput);
    });
});

function realtimeQuery() {
    var value;
    var api = '71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b';
    var apiUrl = 'https://api.ritekit.com/v1/stats/multiple-hashtags';
    value = $.ajax({
        url: apiUrl + "?tags=wwe&client_id=" + api,
        dataType: 'json',
	async: false
	}).responseJSON.stats;
    return value;
}

function format(value) {
    let result;
    
    if ( value == 0 ) {
        return "N/A";
    }
   
    if (value < 1000 && value > 0) {
	return value;
    }
    
    if ( value > 1000 && value < 1000000 ) {
        result = value / 1000;
        return result.toFixed(1) + 'K';
    }
    
    if ( value > 1000000 ) {
        result = value / 1000000;
        return result.toFixed(1) + "M";
    }
  
    if (value < 1000 && value > 0) {
        return value;
    }
    
}

function formatDate(dateValue) {
    var months = ['Jan', 'Feb', 'Mar', 'Apr',
  		  'May', 'Jun', 'Jul', 'Aug',
  		  'Sept', 'Oct', 'Nov', 'Dec'];
  		          
    var date2 = new Date(dateValue);
    return months[ date2.getMonth() ] + " " + date2.getDate() +
           ", " + date2.getFullYear();
}

function tableGenerate(userInput) {
    var api = "81c7fa4e99adc98e9455c86ee38a4c1bbe3f97328732"
    $('#main-results').DataTable({
    	"ajax": {
    		"url": "https://api.ritekit.com/v1/stats/history/" + userInput + "?tags=&client_id=" + api },
    
       	"columns": [
    		{   
  		  "data": "date",
  		  render: function( value, type, row ){
  		      return formatDate(value)
  		    }
    		},
    		{
    		  "data": "retweets",
    		  render: function( data, type, row ) {
    		          console.log(data);
                      return format( data )
    		  }
    		},
    		{ 
    		  "data": "tweets",
    		   render: function( data, type, row ) {
    		           console.log(data);
      		       return format( data );
    		   }
    		},
    		{
                  "data": "exposure",
    	          render: function( data, type, row ) {
    	                 console.log(data);
                      return format( data );
    	          }
    		}
    	   ]
    });    
}





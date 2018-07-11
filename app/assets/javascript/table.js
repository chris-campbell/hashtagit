$(document).ready( function () {
    $(".btn-2").click(function() {
        var userInput = $('#search').val();
        tableGenerate(userInput);
    });
});

function realtimeQuery() {
	var value;
	var api = '71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b';
	
	value = $.ajax({
		url: 'https://api.ritekit.com/v1/stats/multiple-hashtags?tags=wwe&client_id=' + api,
		dataType: 'json',
		async: false
	}).responseJSON.stats;
	return value;
}

function tableGenerate(userInput) {
    var api = "81c7fa4e99adc98e9455c86ee38a4c1bbe3f97328732"
    var data = $('#main-results').DataTable({
    	"ajax": {
    		"url": "https://api.ritekit.com/v1/stats/history/" + userInput + "?tags=&client_id=" + api},
    
       	"columns": [
       	    { "data": "tag" },
    		{ "data": "date" },
    		{ "data": "retweets" },
    		{ "data": "tweets" },
    		{ "data": "exposure" }
    	]
    });
}





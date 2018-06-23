var hashTag = $('#search').val();

$('.btn').click(function() {
  generateQueryTable(hashTagQuery(hashTag));
});

function hashTagQuery(userInput) {
	var value;
	value = $.ajax({
		url: 'https://api.ritekit.com/v1/stats/history/' + userInput + '?tags=&client_id=' + 
				 '71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b',
		dataType: 'json',
		async: false
	}).responseJSON.data; // This will wait until you get a response from the ajax request.
	return value;
}

function createTableRow() {
	return document.createElement('tr');
}

function createTableData() {
	return document.createElement('td');
}

function tableDataValue(value) {
	return document.createTextNode(value);
}

function generateQueryTable(queryList) {
	var sections = ['date','tweets','exposure', 'retweets', 'mentions'];
	for( var item in queryList ) {
		var row = createTableRow();
		for( var n in sections ) {
			var data = createTableData();
			var value = tableDataValue(queryList[ item ][ sections[ n ] ]);
				data.appendChild( value );
				row.appendChild( data );
				document.getElementById('main-results').appendChild( row );
		}
	}
}

$('.btn').click(function() {
  var hashTag = $('#search').val();
  generateQueryTable(hashTagQuery(hashTag));
}); 

function hashTagQuery(userInput) {
	var value;
	value = $.ajax({
		url: 'https://api.ritekit.com/v1/stats/history/' + userInput + 
		  '?tags=&client_id=' + '71877ac7a47d252480110b17cb8cdfc5421e1c47dc8b',
		dataType: 'json',
		async: false
	// This will wait until you get a response from the ajax request.
	}).responseJSON.data;
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

function dateFormat(date) {
  const monthNames = [ "January", "February", "March", "April", "May", "June",
                      "July", "August", "September", "October", "November", 
                      "December" ];

  var parts = date.match(/(\d+)/g);
  var formatDate = new Date(parts[0], parts[1]-1, parts[2]);
  return monthNames[formatDate.getMonth()] + ' ' + formatDate.getDate() +
                    ', ' + formatDate.getFullYear();
}

function generateQueryTable(queryList) {
	var sections = ['date','tweets','exposure', 'retweets', 'mentions'];
	for( var item in queryList ) {
		var row = createTableRow();
		for( var n in sections ) {
      if(sections[n] === 'date') {
        var data = createTableData();
			  var value = tableDataValue(dateFormat(queryList[ item ][ sections[ n ] ]));
			  var bold = document.createElement('em');
			  bold.appendChild( value );
				data.appendChild( bold );
				row.appendChild( data );
				document.getElementById('main-results').appendChild( row );
      } else {
        var data = createTableData();
			  var value = tableDataValue(queryList[ item ][ sections[ n ] ]);
				data.appendChild( value );
				row.appendChild( data );
				document.getElementById('main-results').appendChild( row );
      }
		}
	}
}

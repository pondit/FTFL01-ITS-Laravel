function getHTTPObject() {
    var xhr = false;
    if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        try {
            xhr = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                xhr = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {
                xhr = false;
            }
        }
    }
    return xhr;
}

function grabFile(file) {
    var request = getHTTPObject();
    if (request) {
        request.onreadystatechange = function() {
            displayResponse(request);
        };
        request.open("GET", file, true);
        request.send(null);
    }
}

function displayResponse(request) {
    if (request.readyState == 4) {
        if (request.status == 200 || request.status == 304) {
            
            var  json = request.responseText;
            objCountriesountries= JSON.parse(json);
           // alert
			//(objCountries.countries0].country['country_id'] + " "+ objCountries.countries[0].country['country_name']);
        
		var option="<select>";
		for (var i=0;i<objCountries.Countries.length;i++){
		option+="<option value='"+objCountriesountries.Countries[i].country['country_id']+"'>"+objCountriesountries.countries[i].country['country_name']+"</option>
    }
	option +="</select>";
	alert(option);
	document.getElementById('dropdown').innerHTML=option;
}
}
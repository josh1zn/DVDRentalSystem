function HandleAjax(methodName, data, successMethod) {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "DVDRental.asmx/" + methodName,
        data: data == null ? "{}" : data,
        dataType: "json",
        success: successMethod,
        error: function (request, status, error) {
            alert(request.responseText);
        }
    });
}

function QueryParameter(parameterName) {
    var hash, value;
    var q = document.URL.split('?')[1];
    if (q != undefined) {
        q = q.split('&');
        for (var i = 0; i < q.length; i++) {
            hash = q[i].split('=');
            if (hash[0] == parameterName) {
                value = hash[1];
            }
        }
    }
    return value;
}
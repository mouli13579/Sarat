$(function () {
    var id = getParameterByName('script');
   // alert(id);
    getScript(id);
});

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function getScript(id)
{
    if (id != '') {
        $.ajax({
            type: "GET",
            contentType: "application/json",
            dataType: "json",
            processData: false,
            url: baseApiUrl + 'Forms/GetManuScript?id='+ id,
                        
            success: function (msg, results) {
               // alert(JSON.stringify(msg));
                if (msg.length > 0) {
                    $('#formbody').html("");
                    toSee = $('#FormsList').render(msg);
                    $('#formbody').append(toSee);

                    $("#documentsRow").html("");
                    for (var i = 0; i < msg[0].UploadFiles.length; i++) {
                        var fname = msg[0].UploadFiles[i].FileName;
                        var row = "";
                        if (fname != null) {
                            row = "<tr><td><a download=" + msg[0].UploadFiles[i].FileType + " href='" + msg[0].UploadFiles[i].FileURL + "' >" + msg[0].UploadFiles[i].FileType + "</a>";
                        }
                        $("#documentsRow").append(row);
                    }
                }
                else {
                    $('#formbody').append("<tr><td> Please contact Administrator..</td></tr>");
                }
            },
            error: function (msg, results) {
                alert("Something went wrong. Please contact Administrator");
            }
        });
    }
}
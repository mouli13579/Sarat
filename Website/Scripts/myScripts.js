$(function () {
    getForms();

});

function getForms() {
    var userID = $('#hdnUserID').val();
   // alert(userID);
    if (userID != "")
    {
        $.ajax({
            type: "GET",
            contentType: "application/json",
            dataType: "json",           
            url: baseApiUrl + '/Forms/GetManuScriptList?userID='+userID,
            async: false,            
            success: function (msg, results) {
              //  alert(JSON.stringify(msg));
                if (msg.length > 0) {
                    $('#formbody').html("");
                    toSee = $('#FormsList').render(msg);
                    $('#formbody').append(toSee);
                }
                else {
                    $('#formbody').append("<tr><td> No Papers found on your Name..</td></tr>");
                }

            },
            error: function (msg, results) {
                $('#formbody').append("<tr><td> No Papers Found. Please contact Administrator</td></tr>");

            }
        });
    }
}
function viewForm(id) {
   // alert('view' + id);
    window.location.href = 'manuscript.aspx?script='+id;
}
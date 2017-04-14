$(function () {
    getForms();

});

function getForms() {
    var userID = 0;
    var isAdmin = true;
    // alert(userID);
    
        $.ajax({
            type: "GET",
            contentType: "application/json",
            dataType: "json",
            url: baseApiUrl + 'Forms/GetManuScriptList?userID=' + userID + '&isAdmin=' + isAdmin,
            async: false,
            success: function (msg, results) {
                //  alert(JSON.stringify(msg));
                if (msg.length > 0) {
                    $('#formbody').html("");
                    toSee = $('#FormsList').render(msg);
                    $('#formbody').append(toSee);

                }
                else {
                    $('#formbody').append("<tr><td> No Papers found..</td></tr>");
                }

            },
            error: function (msg, results) {
                $('#formbody').append("<tr><td> Please contact Administrator</td></tr>");

            }
        });
    
}
function viewForm(id) {
    // alert('view' + id);
    window.location.href = 'AssignmentPage.aspx?script=' + id;
}
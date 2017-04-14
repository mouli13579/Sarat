
$(function () {
    getUsersList();
});


function getUsersList()
{
   
        $.ajax({
            type: "GET",
            contentType: "application/json",
            dataType: "json",
            processData: false,
            url: baseApiUrl + 'Users/GetUsersList',
                        
            success: function (msg, results) {
                // alert(JSON.stringify(msg));
                if (msg.length > 0) {
                    $('#formbody').html("");
                    toSee = $('#FormsList').render(msg);
                    $('#formbody').append(toSee);
                }
                else {
                    $('#formbody').append("<tr><td> Users Not Exist..</td></tr>");
                }
            },
            error: function (msg, results) {
                alert("Something went wrong. Please contact Administrator");
            }
        });
    
}
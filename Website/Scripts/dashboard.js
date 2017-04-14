$(function () {
   
    getCounts();
});

function getCounts() {

    $.ajax({
        type: "GET",
        contentType: "application/json",
        dataType: "json",
        processData: false,
        url: baseApiUrl + 'Values/GetDashboardItems',

        success: function (msg, results) {
            // alert(JSON.stringify(msg));
            if (msg.length > 0) {
                $('#formbody').html("");
                toSee = $('#FormsList').render(msg);
                $('#formbody').append(toSee);
                              
            }
            else {
                $('#formbody').append(" Please contact Administrator");
            }
        },
        error: function (msg, results) {
            alert("Something went wrong. Please contact Administrator");
        }
    });
}
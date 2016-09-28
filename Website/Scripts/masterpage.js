
$(document).ready(function () {
    $('#im').click(function () {
        window.location.href = 'http://www.paraapublications.com/';
    })
    $("#lnkSettings").popover({
        html: true,
        content: function () {
            return $("#settings-content").html();
        }
    });
});
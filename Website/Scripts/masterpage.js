

$(document).ready(function () {
    // alert('hehe');
    var islogin = localStorage.getItem("userName");
    if (islogin =='sarat') {
        $('#lnkLogin').hide();
        $('#lnkRegister').hide();
        $('#spanUserName').text('Welcome , '+islogin);
        $('#lnkLogout').show();
        $('#lnkSettings').show();
        $('#lnkFormSubmit').show();
        $('#lnkAuthor').show();
    }
    
});

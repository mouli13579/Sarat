function login() {
    
    var uname = $('#txtUName').val();
    var pwd = $('#txtPwd').val();
    if (uname == '' || pwd == '') {
        alert('Enter Username and Password');
    }
    else if (uname == 'sarat' && pwd == 'user') {
        //alert('login');
        islogin = true;
        localStorage.setItem("userName", 'sarat');
        window.location.href='Home.aspx';
    }
    else {
        alert('login failed');
    }
}

function cancel() {
    window.location.href = 'Home.aspx';
}
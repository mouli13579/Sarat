//function login() {
    
//    var uname = $('#txtUName').val();
//    var pwd = $('#txtPwd').val();
//    var role = "AUTH";
//    if (uname == '' || pwd == '') {
//        alert('Enter Username and Password');
//    }
//    else {
//        var objUser = new Object();
//        objUser.UserName = uname;
//        objUser.Password = pwd;
//        objUser.RoleCode = role;
//        var dataToSend = JSON.stringify(objUser);
//        $.ajax({
//            type: "POST",
//            contentType: "application/json",
//            dataType: "json",            
//            url: baseApiUrl + '/users/GetLogin',
//            async: false,
//            data: dataToSend,
//            success: function (msg, results) {
//                if (msg.Status) {
//                alert(JSON.stringify(msg));
//                if (msg.UserID == 0) {
//                    alert(msg.output);
//                }
//                else {
//                    $('#hdnUserID').val(msg.UserName);
//                    alert($('#hdnUserID').val());
//                    window.location.href = 'Home.aspx';
//                }
//                }
//            },
//            error: function (msg, results) {
//                alert("Something went wrong. Please contact Administrator");

//            }
//        });

//        $('#hdnUserID').attr('value', '1234');
//               alert($('#hdnUserID').val());
//             window.location.href = 'Home.aspx';
//    }
//}

//function cancel() {
//    window.location.href = 'Home.aspx';
//}

var isValidRegForm = true;
$(document).ready(function() {
    $('#txtEmail').focusout(function () {
        // 
        var email = $('#txtEmail').val();
        if (isValidEmailAddress(email)) {
            isValidRegForm = true;
            $('#txtEmail').removeClass("errortextbox");
        }
        else {
            isValidRegForm = false;
            alert('Invalid Email Address');
            $('#txtEmail').addClass("errortextbox");
        }
    });
    $('#txtFName').focusout(function () {
        // 
        if ($('#txtFName').val() == '' || $('#txtFName').val() == undefined) {
            isValidRegForm = false;
            $('#txtFName').addClass("errortextbox");
        }
        else {
            isValidRegForm = true;
            $('#txtFName').removeClass("errortextbox");
        }
    });
    $('#txtLName').focusout(function () {
        // 
        if ($('#txtLName').val() == '' || $('#txtLName').val() == undefined) {
            isValidRegForm = false;
            $('#txtLName').addClass("errortextbox");
        }
        else {
            isValidRegForm = true;
            $('#txtLName').removeClass("errortextbox");
        }
    });
    $('#txtUName').focusout(function () {
        // 
        if ($('#txtUName').val() == '' || $('#txtUName').val() == undefined) {
            isValidRegForm = false;
            $('#txtUName').addClass("errortextbox");
        }
        else if ($('#txtUName').val().length < 6) {
            isValidRegForm = false;
            $('#txtUName').addClass("errortextbox");
            alert('Username should be atleast six characters');
        }
        else {
            isValidUserName($('#txtUName').val());
            
        }
    });
    $('#txtCnfPwd').focusout(function () {
        if ($('#txtCnfPwd').val().length < 6) {
            isValidRegForm = false;
            $('#txtCnfPwd').addClass("errortextbox");
            alert('Confirm Password should be atleast six characters');
        }
        else if ($('#txtCnfPwd').val() != $('#txtPwd').val()) {
            isValidRegForm = false;
            $('#txtCnfPwd').addClass("errortextbox");
            alert('Password and Confirm Password missmatch');
        }
        else {
            isValidRegForm = true;
            $('#txtCnfPwd').removeClass("errortextbox");
        }
    });
    $('#txtPwd').focusout(function () {
        if ($('#txtPwd').val().length < 6) {
            isValidRegForm = false;
            $('#txtPwd').addClass("errortextbox");
            alert(' Password should be atleast six characters');
        }
        else if ($('#txtCnfPwd').val() != $('#txtPwd').val()) {
            isValidRegForm = false;
            $('#txtPwd').addClass("errortextbox");
            alert('Password and Confirm Password missmatch');
        }
        else {
            isValidRegForm = true;
            $('#txtPwd').removeClass("errortextbox");
        }
    });
    $('#txtMobile').focusout(function () {
        
        if ($('#txtMobile').val().length!=10) {
            isValidRegForm = false;
            $('#txtMobile').addClass("errortextbox");
        }
        else {
            isValidRegForm = true;
            $('#txtMobile').removeClass("errortextbox");
        }
    });
});

function cancel() {
    window.location.href='Home.aspx';
}

function register() {
    var objUser = new Object();
    objUser.FirstName = $('#txtFName').val();
    objUser.LastName = $('#txtLName').val();
    objUser.UserName = $('#txtUName').val();
    objUser.Email = $('#txtEmail').val();
    objUser.Password = $('#txtPwd').val();
    objUser.City = $('#txtCity').val();
    objUser.Country = $('#txtCountry').val();
    objUser.PostalCode = $('#txtPin').val();
    objUser.PhoneNumber = $('#txtMobile').val();
    objUser.RoleID = 1;
    //  alert(JSON.stringify(objUser));
    checkValidRegForm();
    if (isValidRegForm) {
        var dataToSend = JSON.stringify(objUser);
      //  alert(dataToSend);
        $.ajax({
            type: "POST",
            contentType: "application/json",
            dataType: "json",
            processData: false,
            url: baseApiUrl + '/users/CreateUser',
            async: false,
            data: dataToSend,
            success: function (msg, results) {
                //if (msg.Status) {
                    alert("User Registered Successfully");
                //}
            },
            error: function (msg, results) {
                alert("Something went wrong. Please contact Administrator");

            }
        });
    }
}

function checkValidRegForm() {
    
    if ($('#txtFName').val() == '' || $('#txtFName').val() == undefined) {
        isValidRegForm = false;
        $('#txtFName').addClass("errortextbox");
    }
   
    if ($('#txtLName').val() == '' || $('#txtLName').val() == undefined) {
        isValidRegForm = false;
        $('#txtLName').addClass("errortextbox");
    }
    if ($('#txtUName').val() == '' || $('#txtUName').val() == undefined) {
        isValidRegForm = false;
        $('#txtUName').addClass("errortextbox");
    }
    if ($('#txtEmail').val() == '' || $('#txtEmail').val() == undefined) {
        isValidRegForm = false;
        $('#txtEmail').addClass("errortextbox");
    }
    if ($('#txtPwd').val() == '' || $('#txtPwd').val() == undefined) {
        isValidRegForm = false;
        $('#txtPwd').addClass("errortextbox");
    }
    if ($('#txtCnfPwd').val() == '' || $('#txtCnfPwd').val() == undefined) {
        isValidRegForm = false;
        $('#txtCnfPwd').addClass("errortextbox");
    }
   
}
function isValidEmailAddress(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}
 
function isValidUserName(uName) {
  //  alert(uName);
    $.ajax({
        type: "GET",
        contentType: "application/json",
        dataType: "json",       
        url: baseApiUrl + '/users/CheckUsernameExist?uName='+uName,
        async: false,        
        success: function (msg, results) {
            if (msg) {
                isValidRegForm = true;
                $('#txtUName').removeClass("errortextbox");
            }
            else {
                alert('Username already Exist');
                isValidRegForm = false;
                $('#txtUName').addClass("errortextbox");
            }

        },
        error: function (msg, results) {
           
        }
    });
}
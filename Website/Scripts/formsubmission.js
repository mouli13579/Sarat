var UploadFiles = [];

$(function () {
    var email = $('#ContentPlaceHolder1_hdnEmail').val();
    $('#txtEmail').val(email);

    // We can attach the `fileselect` event to all file inputs on the page
    $(document).on('change', ':file', function (e) {
        var input = $(this),
            numFiles = input.get(0).files ? input.get(0).files.length : 1,
            label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
        var fileType = validateFileName(label);
        if (fileType) {
            input.trigger('fileselect', [numFiles, label]);
        }
    });



    // We can watch for our custom `fileselect` event like this
    $(document).ready(function () {
        $(':file').on('fileselect', function (event, numFiles, label) {

            var input = $(this).parents('.input-group').find(':text'),
                log = numFiles > 1 ? numFiles + ' files selected' : label;

            if (input.length) {
                input.val(log);

               // uploadFiles(input);
            } else {
                if (log) alert(log);
            }

        });
    });

    $('#fileCoverLetter').on('change', function (e) {
        var files = $(this).get(0).files;
        var fileType = validateFile(files[0]);
        if (fileType)
            var fileName = uploadFiles(files);
        else
            alert('Only Word Documents are Allowed');
        //alert(fileName);
        var FormSubmissionFiles = new Object();
        FormSubmissionFiles.FileType = "CoverLetter";
        FormSubmissionFiles.FileName = fileName;
        UploadFiles = UploadFiles.concat(FormSubmissionFiles);
    });
    $('#fileAuthor').on('change', function (e) {
        var files = $(this).get(0).files;
        var fileType = validateFile(files[0]);
        if (fileType)
            var fileName = uploadFiles(files);
        else
            alert('Only Word Documents are Allowed');
        var FormSubmissionFiles = new Object();
        FormSubmissionFiles.FileType = "AuthorInfo";
        FormSubmissionFiles.FileName = fileName;
        UploadFiles = UploadFiles.concat(FormSubmissionFiles);
    });
    $('#fileManuscript').on('change', function (e) {
        var files = $(this).get(0).files;
        var fileType = validateFile(files[0]);
        if (fileType)
            var fileName = uploadFiles(files);
        else
            alert('Only Word Documents are Allowed');
        var FormSubmissionFiles = new Object();
        FormSubmissionFiles.FileType = "ManuScript";
        FormSubmissionFiles.FileName = fileName;
        UploadFiles = UploadFiles.concat(FormSubmissionFiles);
        
    });
    $('#fileSupporting').on('change', function (e) {
        var files = $(this).get(0).files;
        var fileType = validateFile(files[0]);
        if (fileType)
            var fileName = uploadFiles(files);
        else
            alert('Only Word Documents are Allowed');
        var FormSubmissionFiles = new Object();
        FormSubmissionFiles.FileType = "SupportingFile";
        FormSubmissionFiles.FileName = fileName;
        UploadFiles = UploadFiles.concat(FormSubmissionFiles);
       
    });

});


function uploadFiles(files) {
   // alert("handleFileUpload "+files.length);
    var fName = "";
    // readfiles(files, form);
   
    for (var i = 0; i < files.length; i++) {
        
       // alert(fileType);
        var fName = '';
        var formdata = new FormData();
        formdata.append('file', files[i]);
        formdata.append('filePath', 'JournalForms');
        // var dataToSend = JSON.stringify(formdata);

        $.ajax({
            type: "POST",
            contentType: false,
            processData: false,
            url: baseApiUrl + '/uploadfile/uploadfile',
            async: false,
            data: formdata,
            success: function (msg, results) {
               // alert(JSON.stringify(msg));
                fName=msg[0];
            },
            error: function (msg, results) {
               // alert(JSON.stringify(msg.responseText));
               // alert(JSON.stringify(results));
                
                alert("File Limit Exceeded");
            }
        });
        //fNames = fName + ',' + fNames;
    }
    return fName;
}

function validateFile(file) {
    var fileName = file.name;
    var extension = fileName.substr((fileName.lastIndexOf('.') + 1));
    switch (extension) {
        case 'DOCX':
        case 'DOC':
        case 'doc':
        case 'docx':
            return true;
            break;

        default:
            return false;
    }
}

function validateFileName(fileName) {    
    var extension = fileName.substr((fileName.lastIndexOf('.') + 1));
    switch (extension) {
        case 'DOCX':
        case 'DOC':
        case 'doc':
        case 'docx':
            return true;
            break;

        default:
            return false;
    }
}


function cancel() {
    window.location.href = 'Home.aspx';
}

function formSubmission() {
    //alert('hi');
    var objForm = new Object();

    objForm.UploadFiles = UploadFiles;
    objForm.UserID = $('#ContentPlaceHolder1_hdnUser').val();
    objForm.Prefix = $('#txtprfix').val();
    objForm.CorrespondingAuthor = $('#txtCAuthor').val();
    objForm.Email = $('#txtEmail').val();
    objForm.Category = $('#ddlCategory :selected').val();
    objForm.Title = $('#txtTitle').val();
    objForm.Abstraction = $('#txtAbstract').val();
    objForm.Keywords = $('#txtKeywords').val();

    var dataToSend = JSON.stringify(objForm);
    if (UploadFiles.length > 0) {
        for (var i = 0; i < UploadFiles.length; i++) {
            var filename = UploadFiles[i].FileName;
           // if (UploadFiles[i].FileType == "CoverLetter") {
              //  alert(filename);
            //}
            
        }
       // alert(dataToSend);
        $.ajax({
            type: "POST",
            contentType: "application/json",
            dataType: "json",
            processData: false,
            url: baseApiUrl + '/Forms/CreateManuscript',
            async: false,
            data: dataToSend,
            success: function (msg, results) {
                //if (msg.Status) {
               alert("Successfully Submitted your Script");
               window.location.href = 'Home.aspx';
                //}
            },
            error: function (msg, results) {

                alert("Something went wrong. Please contact Administrator");
            }
        });
    }
    else {
        alert("You need to upload atleast one script/letter ");
    }
}

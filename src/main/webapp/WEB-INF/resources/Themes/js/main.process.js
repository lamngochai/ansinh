function ajaxSubmitForm() {
 
    // Get form
 
    var data = new FormData($('#fileUploadForm')[0]);
 
 
    $("#submitButton").prop("disabled", true);
 
    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: "/AnSinh/uploadMultiFiles",
        data: data,
 
        // prevent jQuery from automatically transforming the data into a query string
        processData: false,
        contentType: false,
        cache: false,
        timeout: 1000000,
        success: function(data, textStatus, jqXHR) {
 
            $("#result").html(data);
            console.log("SUCCESS : ", data);
            $("#submitButton").prop("disabled", false);
            $('#fileUploadForm')[0].reset();
        },
        error: function(jqXHR, textStatus, errorThrown) {  
 
            $("#result").html(jqXHR.responseText);
            console.log("ERROR : ", jqXHR.responseText);
            $("#submitButton").prop("disabled", false);
 
        }
    });
 
}
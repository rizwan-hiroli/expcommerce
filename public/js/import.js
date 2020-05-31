
//uploading file for import.
var max_file_size=5000000;
$("#upload").on("click", function(e) {
    e.preventDefault();
    $("#importLink").html("");
    //display upload button
    $(e.relatedTarget).data("button");
    var file_data = $("#file").prop("files")[0];

    if ($("#file").val() == "") {
        $("#importLink").html("Please select file.").css("color", "black");
        return false;
    }

    if ($("#file").prop("files")[0].size > max_file_size) {
        $("#importLink").html("File should be less than 5Mb.").css("color", "black");
        return false;
    }

    var extension = file_data.name.substring(
        file_data.name.lastIndexOf(".") + 1
    );
    if (extension != "xlsx") {
        $("#importLink").html("Invalid file type.Only xlsx allowed.").css("color", "black");
        return false;
    }

    $(this).button("loading");

    var actionUrl = '/import';
    var files = e.target.files;
    var form_data = new FormData();
    form_data.append("file", file_data);
    form_data.append("_token", $('input[name="_token"]').val());
    $.ajax({
        data: form_data,
        type: "post",
        url: actionUrl,
        processData: false,
        contentType: false,
        success: function(data) {
            if (data.result == "success") {
                $("#file").val("");
                
                $('#convertModal').modal('hide');

                new PNotify({
                    title: 'Data Imported!',
                    text: 'Please check database for details!',
                    type: 'success',
                    styling: 'bootstrap3',
                    buttons: {
                      sticker: false
                    }
                });

            } else {
                $("#file").val("");
                $("#importLink")
                    .html(
                        "Your sheet has some errors.You can download it <a href=" +
                            data.link +
                            ' style="text-decoration:underline;font-weight:bold;">here</a></p>'
                    ).css("color", "red");

                new PNotify({
                    title: 'Some Error Occured!',
                    text: 'Please download file for details!',
                    type: 'error',
                    styling: 'bootstrap3',
                    buttons: {
                      sticker: false
                    }
                });
            }
        },
        error: function(data) {
            
        },
        complete: function() {
            $("#upload").button("reset");
        },
        beforeSend: function() {}
    });
});
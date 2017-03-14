function  viewImage(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#pro_img')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(200);
        };
        reader.readAsDataURL(input.files[0]);
    }
}

function validatePassword() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("confirmPassword").value;
    var ok = true;
    if (pass1 != pass2 || pass1 == "" || pass2 == "") {
        //alert("Passwords Do not match");
        document.getElementById("password").style.borderColor = "#E34234";
        document.getElementById("confirmPassword").style.borderColor = "#E34234";
        ok = false;
    } else {
        document.getElementById("password").style.borderColor = "green";
        document.getElementById("confirmPassword").style.borderColor = "green";
    }
    return ok;
}

function validateMobile() {
    var mobformat = /^01[0-2][0-9]{8}$/;
    if (!mobformat.test(document.getElementById("phone").value)) {
        document.getElementById("phone").style.borderColor = "#E34234";
    } else {
        document.getElementById("phone").style.borderColor = "";
    }

}
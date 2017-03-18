function  viewImage(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#pro_img')
                    .attr('src', e.target.result);
        };
        reader.readAsDataURL(input.files[0]);
    }
}
$("#cancel").click(function () {
    location.href = "MainAdmin.jsp";
});
function show() {


}
function populateFlowers() {
    var selectedValue = $("[name=flowerObtained]").find(":selected").val();
    var flowersData = $("#flowers").val();
    if (flowersData !== "") {
        // if(flowersData.contains(flowersData,selectedValue)!==true){
        $("#flowers").val(flowersData + "," + selectedValue);
        $("[name=flowerObtained]").find(":selected").remove();
        $("[name=flowerObtained]").val("first").selected = true;

    } else
    {

        $("#flowers").val(selectedValue);
        $("[name=flowerObtained]").find(":selected").remove();
        $("[name=flowerObtained]").val("first").selected = true;
    }
}

function populateProducts() {
    var selectedValue = $("[name=productsObtained]").find(":selected").val();
    var productsData = $("#products").val();
    if (productsData !== "") {
        // if(flowersData.contains(flowersData,selectedValue)!==true){
        $("#products").val(productsData + "," + selectedValue);
        $("[name=productsObtained]").find(":selected").remove();
        $("[name=productsObtained]").val("first").selected = true;

    } else
    {

        $("#products").val(selectedValue);
        $("[name=productsObtained]").find(":selected").remove();
        $("[name=productsObtained]").val("first").selected = true;
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
var userId;
var categoryId;
var productId;
function setPname(name, id) {
    var x = name;
    console.log(x);
    $('#pname').html(x);
    console.log(id);
    userId = id;
    console.log(userId);
}
function setCname(name, id) {

    $('#cname').html(name);
    console.log(id);
    categoryId = id;

}

function productSetName(name, id) {

    $('#productName').html(name);
    console.log(id);
    productId = id;

}



// server
function sendClientId() {
    console.log(userId);


    var arr = {'id': userId};


    $.ajax({url: "../RemoveClientServlet?date=" + new Date().getTime(),
        type: 'GET',
        contentType: 'application/json',
        data: arr,
        success: function (data, textStatus, jqXHR) {
            location.reload(true);
        }
    });
    $('#no').click();

}

function deleteCategoryId() {



    var arr = {'id': categoryId};


    $.ajax({url: "../RemoveCategoryServlet?date=" + new Date().getTime(),
        type: 'GET',
        contentType: 'application/json',
        data: arr,
        success: function (data, textStatus, jqXHR) {
            location.reload(true);
        }
    });
    $('#no').click();

}

function deleteProductId() {



    var arr = {'id': productId};

    console.log(arr);
    $.ajax({url: "../RemoveProductServlet?date=" + new Date().getTime(),
        type: 'GET',
        contentType: 'application/json',
        data: arr,
        success: function (data, textStatus, jqXHR) {
            location.reload(true);
        }
    });
    $('#no').click();

}

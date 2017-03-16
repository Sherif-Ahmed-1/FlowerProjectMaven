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
$("#cancel").click(function (){
   location.href="MainAdmin.jsp"; 
});
function populateFlowers() {
    var selectedValue = $("[name=flowerObtained]").find(":selected").val();
    var flowersData= $("#flowers").val();
    if(flowersData!==""){
       // if(flowersData.contains(flowersData,selectedValue)!==true){
    $("#flowers").val(flowersData + "," + selectedValue);
    $("[name=flowerObtained]").find(":selected").remove();
    $("[name=flowerObtained]").val("first").selected = true;
//}
/*else
{
    
    $("[name=flowerObtained]").find(":selected").remove();
    $("[name=flowerObtained]").val("first").selected = true;
}*/
}
else
{
     
    $("#flowers").val(selectedValue);
    $("[name=flowerObtained]").find(":selected").remove();
    $("[name=flowerObtained]").val("first").selected = true;
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

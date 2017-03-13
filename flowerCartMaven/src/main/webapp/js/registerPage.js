/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function setConfirmPassword()
{
    
    document.getElementById("Confirmpassword").pattern=document.getElementById("password").value;
    console.log(document.getElementById("password").value);
    console.log(document.getElementById("Confirmpassword").pattern);
//    document.getElementById("Confirmpassword").setCustomValidity("password does not match");
    
    
//    $("#Confirmpassword").attr("pattern",asd);
//    console.log($("#Confirmpassword").attr("pattern"));
}
function viewpassword()
{
       console.log(document.getElementById("Confirmpassword").value);
    console.log(document.getElementById("Confirmpassword").pattern);
}

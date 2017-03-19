/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function calcExtraPrice(id, quantity)
{
//    if (parseInt(quantity.value) <= parseInt(quantity.max) && parseInt(quantity.value) > 0)
//    {
    document.getElementById("ExtratotalPrice" + id).innerHTML = parseFloat(document.getElementById("price" + id).innerHTML) * quantity.value;
    calcExtratotalprice()
//updateProductQuantity(id, quantity);
//    }

}
function calcExtratotalprice()
{
    var total = 0;
    products = document.getElementsByName("ExtratotalPrice");
    for (i = 0; i < products.length; i++)
    {
        asd = products[i].childNodes[0].data;
        total += parseInt(products[i].childNodes[0].data);
    }
    document.getElementById("totalPrice").innerHTML = '$' + total;

}
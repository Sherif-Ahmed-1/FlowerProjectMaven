
function remove(row, productPrice, id)
{
    productPrice.innerHTML = 0;
    $(row).parents("tr").fadeOut('slow', function (c) {
        $(row).parents("tr").remove();
    });
    calctotalprice();
    removeFromCart(id);
}
function calcProductPrice(id, quantity)
{
//    if (parseInt(quantity.value) <= parseInt(quantity.max) && parseInt(quantity.value) > 0)
//    {
    document.getElementById("ProducttotalPrice" + id).innerHTML = parseFloat(document.getElementById("price" + id).innerHTML) * quantity.value;
    calctotalprice();
    updateProductQuantity(id, quantity);
//    }

}
function  updateProductQuantity(id, quantity)
{


}
function calctotalprice()
{
    var total = 0;
    products = document.getElementsByName("ProducttotalPrice");
    for (i = 0; i < products.length; i++)
    {
        asd = products[i].childNodes[0].data;
        total += parseInt(products[i].childNodes[0].data);
    }
    document.getElementById("totalPrice").innerHTML = '$' + total;

}
function countProducts()
{
    var productsId = JSON.parse(sessionStorage.getItem("ProductsId"));
    var products = 0;
    if (productsId == null)
    {
        $("#myCart").html("0 items in cart");
    } else
    {
        for (i = 0; i < productsId.length; i++)
        {
            products += parseInt(JSON.parse(sessionStorage.getItem(productsId[i])));
        }
        $("#myCart").html(products + " items in cart");
    }

//    console.log($("[name=myCart]"));
}
function removeFromCart(id)
{
    var productsId = JSON.parse(sessionStorage.getItem("ProductsId"));
    if (productsId != null)
    {
        sessionStorage.removeItem(id.toString());
        for (i = 0; i < productsId.length; i++)
        {
            if (parseInt(JSON.parse(productsId[i])) == id)
            {
                productsId.splice(i, 1);
                break;
            }
        }
        sessionStorage.setItem("ProductsId", JSON.stringify(productsId));
    }
    countProducts();

}


function addToCart(id)
{
    syncCartWithServer();
    var productsId = JSON.parse(sessionStorage.getItem("ProductsId"));
    if (productsId == null)
    {
        productsId = new Array();
        sessionStorage.setItem("ProductsId", JSON.stringify(new Array()));
    }
    notExist = true;
    for (i = 0; i < productsId.length; i++)
    {
        if (parseInt(JSON.parse(productsId[i])) == id)
        {
            notExist = false;
            break;
        }
    }
    if (notExist == true)
    {
        sessionStorage.setItem(id.toString(), JSON.stringify(1));
        productsId = JSON.parse(sessionStorage.getItem("ProductsId"));
        productsId.push(id);
        sessionStorage.setItem("ProductsId", JSON.stringify(productsId));
    } else
    {
        var quantity = parseInt(JSON.parse(sessionStorage.getItem(id.toString())));
        sessionStorage.setItem(id.toString(), JSON.stringify(quantity + 1));
    }
    countProducts();
}

function getProductsDetails()
{
    var productsId = {'productsId': sessionStorage.getItem("ProductsId")}
    ;
    $.ajax({url: "GetProductsDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: productsId,
        dataType: 'json', success: function (data, textStatus, jqXHR) {
            //       console.log(data);
            for (i = 0; i < data.length; i++)
            {
                var row = '<tr><td><a href="#">' + '<img src="' + data[i].imageUrl + '" alt="Black Blouse Armani"></a></td>\n\
                            <td><a href="#">' + data[i].productName + '/></a></td><td> <input type="number" value="1" min="1" max="${product.quantity}"\n\onchange="calcProductPrice(' + data[i].id + ', this)"class="form-control"></td><td><div id="price'
                        + data[i].id + '">' + data[i].unitPrice + '</td><td>$0.00</td><td><div id="ProducttotalPrice' +
                        data[i].id + '" name="ProducttotalPrice">' + data[i].unitPrice + '</td><td><a><div  id="test1" class="fa fa-trash-o"  onclick="remove(this,ProducttotalPrice' + data[i].id + ',' + data[i].id + ')"  style="cursor: pointer;" ></div></a></td></tr>';
                console.log(row);
                $("#cartData").append(row);
            }
            calctotalprice();
        }

    }
    );

}
function syncCartWithServer()
{


//   if($("#isLoggedIn").val()=="loggedin") 
//   {
    var jsonArray = [];
    var ProductsId = JSON.parse(sessionStorage.getItem("ProductsId"));
    for (i = 0; i < ProductsId.length; i++)
    {
        var Pid = ProductsId[i];
        jsonArray.push({id: Pid, value: sessionStorage.getItem(ProductsId[i].toString())});
    }
    console.log(jsonArray);
    var jsondata = {localProducts: JSON.stringify(jsonArray)};
    console.log(JSON.stringify(jsondata));
    $.ajax({url: "SyncCartServlet?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: jsondata,
        dataType: 'json', success: function (data, textStatus, jqXHR) {

        }});

//   }

}
function basketOnLoad()
{
    getProductsDetails();
    calctotalprice();
}
$(document).ready(function () {
    countProducts();
});
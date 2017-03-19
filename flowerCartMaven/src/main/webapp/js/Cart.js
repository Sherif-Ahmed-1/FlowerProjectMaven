
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
    var productsId = JSON.parse(localStorage.getItem("ProductsId"));
    var products = 0;
    if (productsId == null)
    {
        $("#myCart").html("0 items in cart");
    } else
    {
        for (i = 0; i < productsId.length; i++)
        {
            products += parseInt(JSON.parse(localStorage.getItem(productsId[i])));
        }
        $("#myCart").html(products + " items in cart");
    }

//    console.log($("[name=myCart]"));
}
function removeFromCart(id)
{
    var productsId = JSON.parse(localStorage.getItem("ProductsId"));
    if (productsId != null)
    {
        localStorage.removeItem(id.toString());
        for (i = 0; i < productsId.length; i++)
        {
            if (parseInt(JSON.parse(productsId[i])) == id)
            {
                productsId.splice(i, 1);
                break;
            }
        }
        localStorage.setItem("ProductsId", JSON.stringify(productsId));
    }
    countProducts();
    if ($.cookie("isloggedin") == "true")
    {
        var jsonProduct = {addProduct: JSON.stringify({id: id, value: 1})};
        $.ajax({url: "removeProductFromCart?date=" + new Date().toString(), type: "GET", contentType: 'application/json'
            , data: jsonProduct
        });
    }
}


function addToCart(id)
{
//    syncCartWithServer();
    var productsId = JSON.parse(localStorage.getItem("ProductsId"));
    if (productsId == null)
    {
        productsId = new Array();
        localStorage.setItem("ProductsId", JSON.stringify(new Array()));
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
        localStorage.setItem(id.toString(), JSON.stringify(1));
        productsId = JSON.parse(localStorage.getItem("ProductsId"));
        productsId.push(id);
        localStorage.setItem("ProductsId", JSON.stringify(productsId));
        countProducts();


        if ($.cookie("isloggedin") == "true")
        {
            var jsonProduct = {addProduct: JSON.stringify({id: id, value: 1})};
            $.ajax({url: "addProductToCartDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json'
                , data: jsonProduct
            });
        }

    }
//    else
//    {
//        var quantity = parseInt(JSON.parse(localStorage.getItem(id.toString())));
//        localStorage.setItem(id.toString(), JSON.stringify(quantity + 1));
//    }

}
function getProductsDetails()
{
    var productsId = {'productsId': localStorage.getItem("ProductsId")};
    $.ajax({url: "GetProductsDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: productsId,
        dataType: 'json', success: function (data, textStatus, jqXHR) {
            //       console.log(data);
            for (i = 0; i < data.length; i++)
            {
                var row = '<tr><td><a href="#">' + '<img src="' + data[i].imageUrl + '" alt="Black Blouse Armani"></a></td>\n\
                            <td><a href="#">' + data[i].productName + '</a></td><td> <input type="number" value="1" min="1" \n\onchange="checkAvaliableQuantity(' + data[i].id + ', this)"class="form-control"></td><td><div id="price'
                        + data[i].id + '">' + data[i].unitPrice + '</td><td>$0.00</td><td><div id="ProducttotalPrice' +
                        data[i].id + '" name="ProducttotalPrice">' + data[i].unitPrice + '</td><td><a><div  id="test1" class="fa fa-trash-o"  onclick="remove(this,ProducttotalPrice' + data[i].id + ',' + data[i].id + ')"  style="cursor: pointer;" ></div></a></td></tr>';
                $("#cartData").append(row);
            }
            calctotalprice();
        }

    }
    );

}
function syncCartWithServer()
{
    var isloggedin = $.cookie("isloggedin");
    if ($("#isLoggedIn").val() == "loggedin" && isloggedin != "true")
    {

        $.cookie("isloggedin", "true", {expires: ''});
        var jsonArray = [];
        var ProductsId = JSON.parse(localStorage.getItem("ProductsId"));
        if (ProductsId != null)
        {
            for (i = 0; i < ProductsId.length; i++)
            {
                var Pid = ProductsId[i];
                jsonArray.push({id: Pid, value: localStorage.getItem(ProductsId[i].toString())});
            }
        }
        console.log(jsonArray);
        var jsondata = {localProducts: JSON.stringify(jsonArray)};
        console.log(JSON.stringify(jsondata));
        $.ajax({url: "SyncCartServlet?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: jsondata,
            dataType: 'json', success: function (data, textStatus, jqXHR) {
                ids = new Array();
                for (i = 0; i < data.length; i++)
                {
                    ids.push(data[i].id);
                    localStorage.setItem(data[i].id.toString(), JSON.stringify(data[i].value));

                }
                localStorage.setItem("ProductsId", JSON.stringify(ids));
                countProducts();

            }});

    }
}
function clearCart()
{
    var productsId = JSON.parse(localStorage.getItem("ProductsId"));
    if (productsId != null)
    {

        for (i = 0; i < productsId.length; i++)
        {
            localStorage.removeItem(productsId[i]);
        }
        localStorage.removeItem("ProductsId");
    }
    countProducts();
    $.ajax({url: "LogoutServlet?date=" + new Date().toString(), success: function (data, textStatus, jqXHR) {
            $.removeCookie("isloggedin");
            location.reload();
        }});

}
function basketOnLoad()
{
    getProductsDetails();
    calctotalprice();
}
$(document).ready(function () {
    countProducts();
});
setInterval(function () {
    syncCartWithServer();
}, 2000);
function checkAvaliableQuantity(id, quantity) {

    jsondata = {productId: id};
    $.ajax({url: "CheckAvailableQuantity?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: jsondata
        , success: function (data, textStatus, jqXHR) {
            console.log(quantity);
            console.log(quantity.value);
            if (parseInt(data) >= quantity.value)
            {
                calcProductPrice(id, quantity)
                $("#invalidQuantity").html("");
            } else
            {
                $("#invalidQuantity").html("sorry the max quantity is " + data);
                quantity.value = parseInt(data);
            }
        }});

}

function rememberMe() {
    if ($.cookie("rememberEmail") != "" && $.cookie("rememberPassword")) {
        $("#inputEmail").val($.cookie("rememberEmail"));
        $("#inputPassword").val($.cookie("rememberPassword"));
        $("#remember").prop('checked', true);
    } else {
        $("#inputEmail").val("");
        $("#inputPassword").val("");
        $("#remember").prop('checked', false);
    }
}
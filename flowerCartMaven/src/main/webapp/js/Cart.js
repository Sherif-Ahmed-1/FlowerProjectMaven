
function remove(row, productPrice)
{
    document.getElementById(productPrice).innerHTML = 0;
    $(row).parents("tr").fadeOut('slow', function (c) {
        $(row).parents("tr").remove();
    });
    calctotalprice();
}
function calcProductPrice(id, quantity)
{
    if (parseInt(quantity.value) <= parseInt(quantity.max) && parseInt(quantity.value) > 0)
    {
        document.getElementById("ProducttotalPrice" + id).innerHTML = parseInt(document.getElementById("price" + id).innerHTML) * quantity.value;
        calctotalprice();
    }

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

    }
    countProducts();

}
function addToCart(id)
{

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
    var productsId = {'productsId': sessionStorage.getItem("ProductsId")};
    $.ajax({url: "GetProductsDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: productsId,
        dataType: 'json', success: function (data, textStatus, jqXHR) {
            console.log(data);
        }
    });
}

function basketOnLoad()
{
    getProductsDetails();
    calctotalprice();

}
$(document).ready(function () {
    countProducts();
});
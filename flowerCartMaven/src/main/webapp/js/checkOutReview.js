var checkOutPrice = 0;
function getProductsDetails()
{
    var productsId = {'productsId': localStorage.getItem("ProductsId")};
    $.ajax({url: "GetProductsDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: productsId,
        dataType: 'json', success: function (data, textStatus, jqXHR) {
            //       console.log(data);
            for (i = 0; i < data.length; i++)
            {
                var row = '<tr><td><a href="#">' + '<img src="' + data[i].imageUrl + '" alt="Black Blouse Armani"></a></td>\n\
                            <td><a >' + data[i].productName + '</a></td><td> <a>' + localStorage.getItem(data[i].id.toString()) + '</a></td><td><div id="price'
                        + data[i].id + '">' + data[i].unitPrice + '</td><td>$0.00</td><td><div id="ProducttotalPrice' +
                        data[i].id + '" name="ProducttotalPrice">' + parseInt(localStorage.getItem(data[i].id.toString())) * parseInt(data[i].unitPrice) + '</td></tr>';
                $("#orderReviewTable").append(row);
                checkOutPrice += parseInt(localStorage.getItem(data[i].id.toString())) * parseInt(data[i].unitPrice);
            }
            getExtraDetail();
//            calctotalprice();
        }
    }
    );
//    calctotalprice();
}
function calctotalprice()
{
    var total = 0;
    products = document.getElementsByName("ProducttotalPrice");
//    for (i = 0; i < products.length; i++)
//    {
//        asd = products[i].childNodes[0].data;
//        total += parseInt(products[i].childNodes[0].data);
//    }
    document.getElementById("totalPrice").innerHTML = '$' + checkOutPrice;

}

function getExtraDetail()
{
    var ids = new Array();
    extraIds = JSON.parse(localStorage.getItem("extrasId"));
    for (i = 0; i < extraIds.length; i++)
    {
        console.log(extraIds[i].substring(5));
        ids.push(parseInt(extraIds[i].substring(5)));

    }
    var extrasId = {'extrasId': JSON.stringify(ids)};
    $.ajax({url: "GetExtraDetail?date=" + new Date().toString(), type: "GET", contentType: 'application/json', data: extrasId,
        dataType: 'json', success: function (data, textStatus, jqXHR) {
//                   console.log(data);
            for (i = 0; i < data.length; i++)
            {
                var row = '<tr><td><a href="#">' + '<img src="' + data[i].image.url + '" alt="Black Blouse Armani"></a></td>\n\
                            <td><a >' + data[i].name + '</a></td><td> <a>' + localStorage.getItem("extra" + data[i].ID) + '</a></td><td><div id="price'
                        + data[i].ID + '">' + parseInt(data[i].price) + '</td><td>$0.00</td><td><div id="ProducttotalPrice' +
                        data[i].ID + '" name="ProducttotalPrice">' + parseInt(localStorage.getItem("extra" + data[i].ID)) * parseInt(data[i].price) + '</td></tr>';
                $("#orderReviewTable").append(row);
                checkOutPrice += parseInt(localStorage.getItem("extra" + data[i].ID)) * parseInt(data[i].price);
            }

            calctotalprice();
        }
    }
    );

}
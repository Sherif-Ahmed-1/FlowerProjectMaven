
function remove(row,productPrice)
{
document.getElementById(productPrice).innerHTML=0;
$(row).parents("tr").fadeOut('slow', function(c){
$(row).parents("tr").remove();});			
    calctotalprice();
}
function calcProductPrice(id,quantity)
{
    if(parseInt( quantity.value)<=parseInt( quantity.max)&&parseInt( quantity.value)>0)
    {
   document.getElementById("ProducttotalPrice"+id).innerHTML=parseInt( document.getElementById("price"+id).innerHTML)*quantity.value;
    calctotalprice();
    }
    
}
function calctotalprice()
{
       var total=0;
       products=document.getElementsByName("ProducttotalPrice");
        for(i=0;i<products.length;i++)
        {
            asd=products[i].childNodes[0].data;
            total+=parseInt(products[i].childNodes[0].data);
        }
        document.getElementById("totalPrice").innerHTML='$'+total;
    
}
fun getOfferPrice(price, discount)= price*(1-discount/100)

var vgetOfferPrice = (price, discount) -> price*(1-discount/100) //(anonamus function)

fun formatterData(myInput, x) = x(myInput)
fun m1(myInput:String ,y:(String)-> String) = y(myInput)

fun myFun(myInput:String, formatter: Any ) = formatter(myInput)
%dw 2.0
output application/json

fun getOfferPrice(price,discount)=
	price*(100-discount)/100
	
var vgetOfferPrice= (price,discount) -> price*(100-discount)/100
---
Product: {
	pid: payload.productId,
	pname: payload.name,
	orginprice: payload.originalPrice,
	oferdetails:{
		discountPrice: payload.offer.discountPercentage,
		offerPrice: getOfferPrice(payload.originalPrice,payload.offer.discountPercentage),
		afterDiscount: vgetOfferPrice(payload.originalPrice,payload.offer.discountPercentage)
	},
	name: "durga"
}
	

%dw 2.0
output application/xml

import * from dw::core::Strings
import getOfferPrice as gop from mymodules::CustomFunctions
import mymodules::CustomFunctions
import * from mymodules::CustomFunctions
---

/*listOfNames: { // camelize is not working & chaining is not working for underscore
	n1: "durga Prasanna" formatterData camelize formatterData  underscore,
	n2: "leeal prasad" formatterData  capitalize formatterData camelize,
	n3: "kranthi" formatterData  pluralize,
	n4: "lives" formatterData  singularize,
	n5: "He is my BEstfriend" formatterData  underscore,
	n6: payload.name formatterData  camelize,
	n7: "he is my best friend" formatterData upper formatterData  underscore,
	n8: payload.name formatterData upper formatterData  dasherize,
	n9: payload.name formatterData upper formatterData  underscore,
	n10: "he is my best friend" formatterData upper formatterData  dasherize,
	results: {
		value: [1,3,8,4,2,9] filter $>1 and $<8 orderBy $
			 },				
	t1: {one:"1", two: "2"} formatterData (x)-> x.one + x.two //idi inka koncham simply chesi cheppu
}*/


names: {
	name1: formatterData("durga",upper),
	name2: formatterData("siva",lower),
	name3: "tejesh is my friend" formatterData capitalize,
	n4: "welcome world" myFun upper //(Getting error)
}
/*product @(pId: payload.productId): {
										proId: payload.productId,
										proNmae: payload.name,
										offers: {
													discountPercentage: payload.offer.discountPercentage,
												    offerprice: gop(payload.originalPrice,payload.offer.discountPercentage),
													offerPrice: payload.originalPrice gop payload.offer.discountPercentage
												},
										 priceAfterDiscount: CustomFunctions::vgetOfferPrice(payload.originalPrice, payload.offer.discountPercentage),
										 priceAfterDiscount: payload.originalPrice CustomFunctions::vgetOfferPrice payload.offer.discountPercentage,
										 image: payload.images[1],
										 brandName: upper(payload.brandName),
										 productDescription: formatterData(payload.description,lower),
										 name: payload.name formatterData lower formatterData  upper
										 
									}*/
									
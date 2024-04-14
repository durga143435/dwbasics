%dw 2.0
output application/java

var getOfferPrice = (price,discount) -> price*(100-discount)/100
---
getOfferPrice(payload.originalPrice,payload.offer.discountPercentage)
/**
Define a set of price
Practice for eachloop
 */
 Set<Decimal>prices = new Set<Decimal>{4.00,6.99,8.50,3.25};
 prices.add(0.99);
 prices.add(6.99);
 System.debug(prices);

Decimal sum = 0 ;

for( Decimal eachPrices : Prices){
    sum = sum + eachPrices;
    //sum += eachprice; 
    
}
System.debug('total is : ' + sum);
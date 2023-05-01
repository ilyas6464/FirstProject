// Electronics e1 = new Phones('Iphone' , 999.88, 7456321);
//System.debug(e1) ;

//e1.displayInfo() ;
//System.debug(e1.value() ) ;

// List<Electronics> elecList =new List<Electronics>();

// elecList.add(new Phones('Samsung', 899.99, 7854));
// elecList.add(new Phones('Nokio', 499.99, 7754));
// elecList.add(new Laptop('Mac', 1200.99, 2));
// elecList.add(new Laptop('HP', 999.99, 4));


// for(Electronics each : elecList){
//     each.displayInfo();
//     each.value();

//     if (each instanceof Phones) {
//     System.debug('FOUND Phone!!!!');

// Phones p1 = (Phones) each ;
// p1.call();

// }

// if (each instanceof Laptop) {
//     System.debug('FOUND Laptop!!!!');

// Laptop l = (Laptop) each ;
// l.code();

// }

// coding 1 = (Laptop) ;
// 1.code;

// }
//Electronics l1 = new Laptop('HP', 1236.56, 4);
//System.debug(l1) ; 

Iphone i = new Iphone('Phone', 799.99, 788965, 'X' );
System.debug(i) ;
System.debug(i.value()) ;
i.displayInfo();
i.call();
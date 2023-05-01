/**
Declare list variable initilize it's value
and add all itemes in one shot

List<DataType> lasName
             = new List<DataType>{item1, item2,.......itemN} ;

 */

 List<String>groceries = new List<String>{'Milk','Bread','Egg','Coffee'};

 System.debug(groceries); // (Milk, Bread, Egg, Coffee)

 // create list of integer and add 5 values in one shot
  List<Integer>numList = new List<Integer>{100,200,300,400,500};
 System.debug(numList);
 // create list of decimal and add 5 values in one shot
 List<Decimal>discount = new List<Decimal>{6.99,12.50,56.90,67.80,53,70.90};
 System.debug(discount);

 // create list of Id 5 values in one shot // Id is String
List<Id>accountIds = new List <Id>{'001Dn00000FCCP7IAP',
                                   '001Dn00000FCCP6IAP',
                                   '001Dn00000FCCP9IAP',
                                   '001Dn00000FCCPBIA5',
                                   '001Dn00000FCCP8IAP'
                                   };
 System.debug(accountIds);

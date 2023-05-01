/**
Define a list of brand of cars
practice list of list methods
 */

 List<String>cars = new List<String>{'Ford','Toyota','BMW'};
 System.debug(cars);
 
 cars.add('Mercedes');
 cars.add('Honda');
 cars.add(1,'Tesla');
 System.debug(cars) ; 

Boolean isHonda = cars.contains('Honda');
System.debug(isHonda);

System.debug(cars.get(3));
cars.clear();

System.debug(cars.isEmpty());
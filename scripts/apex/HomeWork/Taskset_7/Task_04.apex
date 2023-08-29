// **# Tasks Set 7 **

// 4. Write an Apex code that create List or Array of 10 String values
List<String> salesforceRoles = new List<String>{
    'Admin',
    'Developer',
    'Architect',
    'Consultant',
    'Business Analyst',
    'Project Manager',
    'Sales Executive',
    'Marketing Specialist',
    'Customer Support',
    'Solution Engineer'
};
System.debug('salesforceRoles value is : ' + salesforceRoles); 
//salesforceRoles value is : (Admin, Developer, Architect, Consultant, Business Analyst, Project Manager, Sales Executive, Marketing Specialist, Customer Support, Solution Engineer)
//    - create a empty Set of String 
List<String> filteredList = new List<String>();
   // filteredList.add(each); 

//    - store all the string that are not equal to admin or developer
//    - print out the size and items in loop 
for(String currentRole : salesforceRoles) {
   
   if(  ! (currentRole=='admin' || currentRole=='developer') ){
      System.debug('currentRole : ' + currentRole);
      filteredList.add(currentRole); 
   }

}

System.debug('filteredList value is : ' + filteredList); 
//filteredList value is : (Architect, Consultant, Business Analyst, Project Manager, Sales Executive, Marketing Specialist, Customer Support, Solution Engineer)
System.debug('filteredList.size()  value is : ' + filteredList.size() );  8 
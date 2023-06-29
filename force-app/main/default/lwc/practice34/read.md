Create a Case Datatable
to display 5 cases in certain status, make it available on app page , allow the app page to provide case status 

Create apex class called CaseController 
create a method inside get5CasesByStatus
accept one param status
return 5 cases that match criteria with below fields
CaseNumber
Subject
Priority
Status

Create lwc component with name caseTable
in your xml provide property with type String name status
possible values using data source 
Closed, New, Working, Escalated
in your js
observe @api status already generated
provide datatable columns according to the doc in columns property
wire the result of  get5CasesByStatus method into a property called myCases

   
in your html
create a card with div
conditionally display below table
add lightning-datatable base component
and provide relevant attribute values
conditionally display error panel

drag and drop this into app page twice 
first one ,case status select Closed
second one, case status select New

add action button
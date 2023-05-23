/*
1.) a query showing Customers who are not in the US
Customer's full name
Customer Id,
Customer's country
*/

SELECT FirstName, LastName, CustomerId, Country FROM Customer
Where Country <> 'USA';
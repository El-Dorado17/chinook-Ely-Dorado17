/*
2.) query only showing the Customers from Brazil.
*/

SELECT FirstName, LastName, CustomerId, Country FROM Customer
WHERE Country = 'Brazil';
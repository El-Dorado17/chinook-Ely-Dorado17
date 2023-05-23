/*
7.) query that shows the customers and employees associated with each invoice
Invoice Total
Customer Name
Customer Country
Sale Agent full name

SELECT Invoice.Total,Customer.FirstName, Customer.LastName, Customer.Country
Employee.FirstName, Employee.LastName
FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId 
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
*/

SELECT Invoice.Total,Customer.FirstName, Customer.LastName,
Customer.Country, Employee.FirstName, Employee.LastName
FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId 
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId;
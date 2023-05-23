/*
18.) query that shows total sales made by each sales agent. 
The resultant table should include:
Employee full name
Total sales for each employee (all time)


Invoice has Total

*/

SELECT Employee.FirstName, Employee.LastName, SUM(Invoice.Total) 
FROM Invoice
JOIN Customer ON Invoice.customerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
GROUP BY Employee.FirstName
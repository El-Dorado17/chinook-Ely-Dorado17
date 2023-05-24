/*
21.)query that shows how many customers are assigned
to each employee. The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)


Customer & Employee table needed connected by employee id and salesrepId
*/

SELECT Employee.FirstName, Employee.LastName, COUNT(Customer.SupportRepId)
FROM Customer
JOIN Employee ON Employee.EmployeeId =  Customer.SupportRepId
GROUP BY Customer.SupportRepId
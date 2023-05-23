/*
6.) Provide a query that shows the invoices associated with 
each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID

Invoice Table has CustomerId
Customer Table has SupportRepId
Employee Table has EmployeeId

SELECT agentname InvoiceId 
FROM Invoice
JOIN Customer ON Invoice.customerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = EmployeeId
WHERE 
*/

SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId 
FROM Invoice
JOIN Customer ON Invoice.customerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Title = 'Sales Support Agent'
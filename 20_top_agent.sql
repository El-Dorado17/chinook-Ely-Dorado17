/*
20.)Which sales agent made the most in sales over all?
REFER TO #19
*/

SELECT 
    Employee.FirstName,
    Employee.LastName, 
    SUM(Invoice.Total) AS TOTAL, 
    Invoice.InvoiceDate
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
GROUP BY Employee.FirstName, Employee.LastName AND Invoice.Total
ORDER BY TOTAL DESC
LIMIT 1

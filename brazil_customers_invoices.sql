/*
3.) a query showing the Invoices of Customers who are from Brazil
Customer's full name
Invoice Id,
Date of the invoice
Billing country
*/

SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Invoice 
JOIN Customer ON Invoice.customerId = Customer.customerId
WHERE Invoice.BillingCountry = 'Brazil'

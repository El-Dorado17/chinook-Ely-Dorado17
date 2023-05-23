/*
14.)query that shows the total number
of invoices per country.


*/

SELECT BillingCountry AS Country,COUNT(InvoiceId) AS Invoice_Total
FROM Invoice
GROUP BY BillingCountry
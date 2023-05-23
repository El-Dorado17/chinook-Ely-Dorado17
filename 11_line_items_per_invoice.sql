/*
11.)Looking at the InvoiceLine table, provide a
query that COUNTs the number of line items for each Invoice

How many occurances of each id

*/

SELECT InvoiceId, COUNT(*) AS LineItem
FROM InvoiceLine
GROUP BY InvoiceId
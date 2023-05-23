/*
10.) Looking at the InvoiceLine table, provide a query 
that COUNTs 
the number of line items for Invoice ID 37.

--Line items????--


LINE 37 OF INVOICE LINE:
37	7	231	0.99	1
*/

SELECT * 
FROM Invoice
WHERE '37%'
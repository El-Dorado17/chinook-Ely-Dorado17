/*
9.) What are the respective total sales
for each of those years SEE #8

SUM(item)
FROM table

*/

SELECT '2009' AS Year, COUNT(*) AS InvoiceCount, SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE '2009%'
UNION ALL
SELECT '2011' AS Year, COUNT(*) AS InvoiceCount, SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE '2011%';

/*
23.)Which country's customers spent the most?
HINT: Use the MAX function on a subquery.

*/

-- SELECT BillingCountry, SUM(TOTAL)
-- FROM Invoice
-- GROUP BY BillingCountry 
-- ORDER BY MAX(BillingCountry) 




SELECT BillingCountry AS Country, SUM(Total) AS TotalSales
FROM Invoice
GROUP BY Country
HAVING TotalSales = (
    SELECT MAX(TotalSales)
    FROM (
        SELECT SUM(Total) AS TotalSales
        FROM Invoice
        GROUP BY BillingCountry
    ) AS SalesByCountry
);

SELECT c.Country, SUM(i.Total) AS TotalSpending
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY TotalSpending DESC
LIMIT 1;
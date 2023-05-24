/*
22.)total sales per country

Just Invoice table
*/

SELECT BillingCountry, SUM(TOTAL)
FROM Invoice
GROUP BY BillingCountry
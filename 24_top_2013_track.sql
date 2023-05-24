/*
24.)shows the most purchased track(s) of 2013.

InvoiceLine has Invoice and Track IDs
Track has trackId 
Invoice has Date and total


*/
SELECT Track.Name, Invoice.InvoiceDate, SUM(Invoice.Total)
FROM InvoiceLine
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
WHERE Invoice.InvoiceDate LIKE '2013%'
GROUP BY Track.Name 
Order BY Invoice.Total DESC
LIMIT 14
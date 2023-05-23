/*
12.) query that shows each Invoice line item, with
the name of the track that was purchased.

SELECT Track.TrackId, InvoiceLine.InvoiceLineId, Track.Name 
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId

*/

SELECT InvoiceLine.InvoiceLineId, Track.TrackId, Track.Name 
FROM InvoiceLine 
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
ORDER BY InvoiceLine.InvoiceLineId ASC;

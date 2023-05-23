/*
12.) query that shows each Invoice line item, with the 
name of the track that was purchase, and the name of the 
artist

InvoiceLine has TrackId
Track has TrackId & AlbumId
Album has AlbumId & ArtistId
Artist ArtistId & Name


**START USING ALIAS**
SELECT Track.TrackId, Track.Name Artist.Name
FROM InvoiceLine 
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN Album ON Artist.AlbumId = Track.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId
ORDER BY InvoiceLine.InvoiceLineId ASC;

*/


SELECT  
    Track.Name AS Track_name, 
    Artist.Name AS Artist_name
FROM Artist 
JOIN Album ON Album.ArtistId = Artist.ArtistId
JOIN Track ON Track.AlbumId = Album.AlbumId;
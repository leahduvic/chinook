SELECT Artist.Name as "Artist Name", count(InvoiceLine.Quantity) as  "Total Sales"
FROM Invoice, InvoiceLine, Track, Album, Artist
WHERE Invoice.InvoiceId = InvoiceLine.InvoiceId
AND InvoiceLine.TrackId = Track.TrackId
AND Track.AlbumId = Album.AlbumId
AND Artist.ArtistId = Album.ArtistId
GROUP BY "Artist Name"
ORDER BY "Total Sales" desc
LIMIT 3;
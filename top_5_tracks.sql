
SELECT Track.Name as "Song Title", Artist.Name as "Artist", count(InvoiceLine.Quantity) as  "Top 5 Songs"
FROM Invoice, InvoiceLine, Track, Album, Artist
WHERE Invoice.InvoiceId = InvoiceLine.InvoiceId
AND InvoiceLine.TrackId = Track.TrackId
AND Track.AlbumId = Album.AlbumId
AND Artist.ArtistId = Album.ArtistId
GROUP BY "Song Title"
ORDER BY "Top 5 Songs" desc
LIMIT 5;
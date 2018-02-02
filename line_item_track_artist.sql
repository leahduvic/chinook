SELECT Count(InvoiceLine.InvoiceLineId), Track.Name, Artist.Name
FROM InvoiceLine
JOIN Track on InvoiceLine.TrackId =Track.TrackId
JOIN Album on Track.AlbumId = Album.AlbumId
JOIN Artist on Album.ArtistId = Artist.ArtistId
GROUP BY InvoiceLine.TrackId
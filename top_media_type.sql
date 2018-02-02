SELECT MediaType.Name as "Media Name", count(InvoiceLine.Quantity) as "Total Sales"
FROM Invoice, InvoiceLine, Track, MediaType
WHERE Invoice.InvoiceId = InvoiceLine.InvoiceId
AND InvoiceLine.TrackId = Track.TrackId
AND Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY "Media Name"
ORDER BY "Total Sales" desc
LIMIT 1;
SELECT invoiceLine.InvoiceLineId, track.Name
from InvoiceLine
JOIN Track on InvoiceLine.TrackId = Track.TrackId
GROUP BY InvoiceLine.InvoiceLineId
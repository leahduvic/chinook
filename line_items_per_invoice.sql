SELECT Count(InvoiceLine.InvoiceLineId) 
from InvoiceLine
GROUP BY InvoiceLine.InvoiceId
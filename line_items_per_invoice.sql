SELECT Count(InvoiceLine.InvoiceLineId)  as Lines, Invoice.InvoiceId
from InvoiceLine, Invoice
where InvoiceLine.InvoiceId == Invoice.InvoiceId
group by InvoiceLine.InvoiceId;
select distinct invoice.InvoiceId as "Invoice", InvoiceLine.Quantity
from Invoice
join InvoiceLine on InvoiceLine.InvoiceId == Invoice.InvoiceId
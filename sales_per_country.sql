select Invoice.BillingCountry as Country, sum(invoice.total)
from Invoice
group by Country;
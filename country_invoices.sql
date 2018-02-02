SELECT Count(Invoice.Total) as "Final Count"
from Invoice
GROUP BY BillingCountry;
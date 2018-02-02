SELECT Customer.FirstName || " " || Customer.LastName as "Name", Invoice.InvoiceId, Invoice.BillingCountry
from Customer 
INNER JOIN Invoice ON Customer.CustomerId=Invoice.CustomerId
WHERE Country = "Brazil";

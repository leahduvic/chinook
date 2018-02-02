select track.name, count(invoiceline.Quantity) as "Total Sold"
from Track
join invoiceline on invoiceline.trackid = track.trackid
join invoice on invoiceline.invoiceid = invoice.invoiceid
WHERE Invoice.InvoiceDate between "2013-01-01" and "2013-12-31"
group by track.name
order by "Total Sold" desc
limit 1;
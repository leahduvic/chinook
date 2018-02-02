select strftime("%Y", InvoiceDate)  as Year, Sum(Total)
from Invoice 
where InvoiceDate BETWEEN '2009-01-01 00:00:00' 
       and '2009-12-31 00:00:00'
OR InvoiceDate BETWEEN '2011-01-01 00:00:00' 
       and '2011-12-31 00:00:00'
GROUP BY Year;
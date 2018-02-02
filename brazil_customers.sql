SELECT FirstName || " " || LastName as "Name", CustomerId
from Customer
where Country = "Brazil";
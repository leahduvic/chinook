select name as "Top in Sales", max("Total") as "Total Sales for 2009"
from (
select Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Total"
from Employee
join Customer on Customer.SupportRepId = Employee.EmployeeId
join Invoice on Customer.CustomerId = Invoice.CustomerId
where Invoice.InvoiceDate between date("2009-01-01") and date("2009-12-31")
group by Name);

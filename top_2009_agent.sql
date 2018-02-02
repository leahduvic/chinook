select name as "Top Salesperson ", max("Total") as "Total"
from (
	select Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Total"
		from Employee
		join Customer on Employee.EmployeeId = Customer.SupportRepId
		join Invoice on Customer.CustomerId = Invoice.CustomerId
		where Invoice.InvoiceDate between "2009-01-01" and "2009-12-31"
group by Name);

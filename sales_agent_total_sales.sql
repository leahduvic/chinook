select Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Sales Total"
from Employee 
join Customer on Customer.SupportRepId == Employee.EmployeeId
join Invoice on Customer.CustomerId == Invoice.CustomerId
group by Name;
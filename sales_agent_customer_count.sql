select Employee.FirstName || " " || Employee.LastName as "Employee Name", count(customer.customerId) as "Total Customers"
from Employee 
join customer on Customer.SupportRepId == Employee.EmployeeId
group by "Employee Name";
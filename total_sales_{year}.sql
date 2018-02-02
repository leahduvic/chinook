
select Name as "Top in Sales", max("Total") as "Total Sales for 2009"
from (
select Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Total"
from Employee
join Customer as Customer.SupportRepId == Employee.EmployeeId
join invoice as Customer.CustomerId == Invoice.CustomerId
where Invoice.InvoiceDate between date("2009-01-01") and date("2009-12-31")
group by Name);

SELECT name as "Top Salesperson 2009", max("Total Sales") as "Total sales 2009"
FROM (
SELECT Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, sum(Invoice.Total) as "Total Sales"
FROM Employee
JOIN Customer on Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice on Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.InvoiceDate between date("2009-01-01") and date("2009-12-31")
Group by Name);
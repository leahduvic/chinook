SELECT Employee.FirstName || " " || Employee.LastName as "Name", Employee.Title, Invoice.InvoiceId
FROM Employee
INNER JOIN Customer on Employee.EmployeeId=Customer.SupportRepId
INNER JOIN Invoice on Customer.SupportRepId=Invoice.CustomerId;

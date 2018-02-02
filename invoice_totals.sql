SELECT Customer.FirstName || " " || Customer.LastName as "Customer Name", Customer.Country, Invoice.Total, Employee.FirstName || " " || Employee.LastName as "Employee Name"
FROM Employee
INNER JOIN Customer on Customer.SupportRepId = Employee.EmployeeId
INNER JOIN Invoice on Customer.CustomerId = Invoice.InvoiceId;

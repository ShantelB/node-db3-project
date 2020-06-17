-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName FROM [Product] as P 
JOIN [Category] as C ON  P.CategoryID = C.CategoryID;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT OrderID, CompanyName FROM [Order] as O
JOIN [Shipper] as S ON O.ShipVia = S.OrderID
WHERE O.OrderDate < 08-09-2012 

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity FROM [Product] as P
JOIN [OrderDetail] as O ON  O.ProductID = P.ProductID
WHERE O.OrderID = 10251
ORDER BY P.ProductName 

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT DISTINCT OrderId as 'Order id', CompanyName as 'Company Name', LastName as 'Employee Last Name'
FROM [Order] as O
JOIN [customer] as C
JOIN [employee] as E
ON O.CustomerId = C.Id
WHERE O.EmployeeId = E.Id;
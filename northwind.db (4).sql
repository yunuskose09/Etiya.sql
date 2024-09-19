--1)
--select customers.CompanyName, orders.OrderID, orders.ShippedDate from customers 
--join orders on customers.CustomerID = orders.CustomerID
--group by customers.CustomerID

--2)
--select Suppliers.CompanyName, Products.ProductName from Suppliers 
--left join Products on Suppliers.SupplierID = Products.SupplierID 
--group by Suppliers.SupplierID

--3)
--select Employees.EmployeeID, Employees.FirstName, Employees.LastName, Orders.ShipName from Employees  
--left join orders on Employees.EmployeeID = Orders.EmployeeID  
--order by Employees.EmployeeID

--4)
--SELECT customers.CustomerID, customers.CompanyName, orders.ShipName  FROM Customers 
--FULl JOIN  Orders ON Customers.CustomerID = Orders.CustomerID
--order by Customers.CustomerId

--5)
--SELECT Products.ProductID, Products.ProductName, Categories.CategoryID, Categories.CategoryName FROM Products 
--CROSS JOIN Categories

--6)
--select Customers.CompanyName, orders.OrderID, Orders.OrderDate , Employees.FirstName, Employees.LastName  from orders 
--join Customers on Orders.CustomerID = Customers.CustomerID join Employees on Employees.EmployeeID = Orders.EmployeeID
--where orders.OrderDate like '%1998%'

--7)
--SELECT Customers.CustomerID, Customers.CompanyName, COUNT(Orders.OrderID) AS OrderCount FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
--GROUP BY  Customers.CustomerID, Customers.CompanyName
--HAVING COUNT(Orders.OrderID) > 5

--8)
--select p.ProductName, od.orderid, sum(od.quantity) as toplamsatis, od.unitprice * od.quantity as toplamkazanc from  'Order Details' od join Products p on od.productID = p.ProductID
--group by p.ProductID

--9)
--select Customers.CompanyName ,orders.ShipName from Customers join orders on Customers.CustomerID = Orders.CustomerID
--where Customers.CompanyName like 'B%'

--10)

--SELECT Categories.CategoryID, Categories.CategoryName, Products.ProductID, Products.ProductName FROM Categories 
--LEFT JOIN Products  On Categories.CategoryID = Products.CategoryID
--where Products.UnitsInStock = 0 

--11)
--select E1.EmployeeID, concat(e1.FirstName, ' ' ,e1.LastName) as calisan, concat (e2.FirstName, ' ' , e2.LastName) as yonetici from Employees e1
--join Employees e2 on E1.ReportsTo = E2.EmployeeID

--12)
--SELECT  productid,max(unitprice) FROM Products 
--group by Products.ProductID 
--having count(distinct Products.UnitPrice)

--13)
--select * from orders o join 'Order Details' od on o.OrderID = od.orderid
--order by o.orderid asc 

--14)
--select e.FirstName, e.LastName, count(o.OrderID)  from Employees e  left join orders o on e.EmployeeID = o.EmployeeID 
--group by e.EmployeeID, e.FirstName, e.LastName

--15)
--SELECT p1.ProductID, p1.ProductName, p1.UnitPrice, p1.CategoryID FROM Products p1 JOIN Products p2 ON P1.CategoryID = p2.CategoryID AND p1.UnitPrice < p2.UnitPrice
--GROUP BY p1.ProductID, p1.ProductName, p1.UnitPrice, p1.CategoryID
  
--16)
--select s.SupplierID, p.ProductName, p.UnitPrice from Products p join  Suppliers s on p.SupplierID = s.SupplierID
--order by p.UnitPrice desc 

--17)
--select max(o.OrderDate)  as son_isleme, e.FirstName, e.LastName  from Employees e join orders o on e.EmployeeID = o.EmployeeID 
--group by e.EmployeeID

--18)
--select count(*) , productname, unitprice Products FROM Products
--where unitprice > 20

--19)
--select o.ShipName, c.CompanyName from orders o join Customers c on o.CustomerID = c.CustomerID 
--where o.OrderDate between '2011.01.01' and '2018.12.12'

--20)
--SELECT c.CompanyName from Customers c  left join orders o on c.CustomerID = o.CustomerID 
--where o.OrderID is null 
  


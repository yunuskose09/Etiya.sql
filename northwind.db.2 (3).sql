--1)
--select max(unitprice), productid, productname from Products

--2)
--select max(orderdate), orderid from Orders

--3)
--select * from Products
--where unitprice > (select avg(unitprice) as ortalamafiyat from Products)

--4)
--select * from Categories c JOIN Products p on c.CategoryID = p.CategoryID
--where c.categoryname = 'Seafood'

--5)
--SELECT  * FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
--WHERE p.UnitPrice = (SELECT MAX(UnitPrice)FROM Products WHERE CategoryID = C.CategoryID)
--ORDER BY c.CategoryName

--6)
--select * from Orders o join Customers c on o.CustomerID =  c.customerid
--where c.country = 'Spain'
--order by c.customerid

--7)
--SELECT * FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
--WHERE p.UnitPrice > (SELECT AVG(UnitPrice) FROM Products
--WHERE CategoryID = c.CategoryID )
--ORDER BY  c.CategoryName, P.UnitPrice

--8)
--SELECT c.customerid, c.companyname, o.OrderDate FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
--WHERE o.OrderDate = (SELECT MAX(OrderDate)FROM Orders
--WHERE CustomerID = c.CustomerID )
--ORDER BY c.CustomerID

--9)
--SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(o.OrderID) AS toplam_siparis FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID
--GROUP BY e.EmployeeID, e.FirstName, e.LastName
--ORDER BY toplam_siparis DESC
--LIMIT 1

--10)
--select o.orderid, o.orderdate, count(od.productid) as toplam_sayi from orders o join 'Order Details' od on o.OrderID = od.orderid
--group by o.OrderID, o.OrderDate
--having count(od.productid) >= 10

--11)
--select c.CategoryID, c.CategoryName, avg(p.UnitPrice) as en_pahali_ortalama from Categories c join Products p on c.CategoryID = p.CategoryID 
--where p.unitprice  = (select max(unitprice) FROM Products where categoryid = p.CategoryID )
--group by c.CategoryName

--12)
--select c.customerid, c.companyname, count(o.OrderID) as toplam_siparis from Customers c  left join orders o on c.customerid = o.CustomerID
--group by c.customerid, c.companyname 
--order by toplam_siparis desc

--13)
--SELECT c.CustomerID, c.CompanyName, COUNT(o.OrderID) AS toplam_siparis, MAX(o.OrderDate) AS son_siparis FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
--GROUP BY c.CustomerID, c.CompanyName
--ORDER BY toplam_siparis DESC
--LIMIT 5

--14)
--select c.CategoryID, c.CategoryName, count(p.ProductID) as toplam_urun from Categories c join Products p on c.CategoryID = p.CategoryID
--group by c.CategoryID, c.CategoryName 
--having count(p.ProductID) > 5

--15)
--select c.customerid, c.companyname,  count(distinct od.productid) as essiz_urun from Customers c join orders o on c.customerid = o. customerid join 'order details' od on o.OrderID = od.orderid 
--group by c.customerid, c.companyname 
--having count(distinct od.productid) <=5
--order by essiz_urun

--16)
--select s.SupplierID, s.CompanyName, count(p.ProductID) as urun_sayisi from Suppliers s join Products p on s.SupplierID = p.SupplierID 
--group by s.SupplierID, s.CompanyName
--having count (p.ProductID) > 2

--17)
--SELECT c.CustomerID, c.CompanyName, p.ProductID, p.ProductName, p.UnitPrice FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID JOIN 'Order Details' od ON o.OrderID = od.OrderID
--JOIN Products p ON od.ProductID = p.ProductID
--WHERE (c.CustomerID, p.UnitPrice) IN (SELECT  o.CustomerID, MAX(p.UnitPrice) FROM Orders o JOIN 'Order Details' od ON o.OrderID = od.OrderID JOIN Products p ON od.ProductID = p.ProductID
--GROUP BY o.CustomerID)

--18)
--SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(od.Quantity * p.UnitPrice) AS toplam_siparis_degeri FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID
--JOIN "Order Details" od ON o.OrderID = od.OrderID
--JOIN Products p ON od.ProductID = p.ProductID
--GROUP BY e.EmployeeID, e.FirstName, e.LastName
--HAVING SUM(od.Quantity * p.UnitPrice) > 10000

--19) 
--SELECT c.CategoryName, p.ProductName, SUM(od.Quantity) AS Toplam_satis FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
--JOIN 'Order Details' od ON p.ProductID = od.ProductID
--JOIN Orders o ON od.OrderID = o.OrderID
--GROUP BY c.CategoryName, p.ProductName
--HAVING SUM(od.Quantity) = (
--SELECT MAX(toplam_satis) FROM (SELECT SUM(od2.Quantity) AS toplam_satis FROM Products p2
--JOIN 'Order Details' od2 ON p2.ProductID = od2.ProductID
--JOIN Orders o2 ON od2.OrderID = o2.OrderID
--WHERE p2.CategoryID = c.CategoryID
--GROUP BY p2.ProductID ) )
--ORDER BY c.CategoryName

--20) 
--select DISTINCT c.customerid, p.ProductName, max(o.OrderDate) as son_siparis from Customers c join Orders o on c.customerid = o.CustomerID 
--join 'Order Details' od on o.OrderID = od.orderid join Products p on od.productid = p.ProductID
--group by c.customerid

--21)
--SELECT e.FirstName, e.LastName, o.OrderID, MAX(od.UnitPrice * od.Quantity) AS en_pahali, MAX(o.OrderDate) as siparis_tarihi FROM Employees e JOIN Orders o ON e.EmployeeID =o.EmployeeID
--JOIN "Order Details" od ON o.OrderID = od.OrderID
--GROUP BY e.EmployeeID

--22)
--select p.ProductID, p.ProductName, sum(od.quantity) as toplam_siparis from products p join 'order details' od on p.ProductID = od.productid join orders o on od.orderid = o.OrderID
--group by p.ProductID, p.ProductName
--order by toplam_siparis desc 
--limit 1

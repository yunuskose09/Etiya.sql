--2.gün workshop>>
--1)   select count(categoryid) from Products
--2)  select * from products 
--order by unitprice desc 
--limit 5 
--3)  select avg(unitprice) from Products
--group by supplierid
--4)  selecet categoryid, AVG(unitprice) AS ortalama_fiyat
--FROM Products
--WHERE unitprice > 100
--GROUP BY categoryid
--5)  select * from 'order details'
--where unitprice * quantity > 1000
--6)  select * from orders 
--order by shippeddate desc 
--limit 10
--7)  select avg (unitprice) as ortalama_fiyat from Products
--8)  select SUM(unitsinstock) AS toplam_stok
--FROM Products
--WHERE unitprice > 50;
--9)  select MIN(orderdate) AS ilk_siparis
--FROM Orders
--10)  select EmployeeID, (strftime('%Y', 'now') - strftime('%Y', HireDate)) AS kaç_yıl_oldu
--FROM Employees
--11)  select orderid, round(sum(unitprice)) as toplam_birim_fiyat from 'order details'
--group by orderid
--12)  select count(*) as ürün_sayısı from Products
--where unitsinstock>0
--13)  select min(unitprice),max(unitprice) from Products
--14)  select  STRFTIME('%Y', OrderDate) AS OrderYear, COUNT(*) AS OrderCount
--FROM Orders
--GROUP BY orderyear 
--15)  select firstname ||' '|| lastname as isim_soyisim from Employees
--16)  select city, length(city) as city_name_length from Customers
--17)  select productname, round(unitprice,2) as rounded_price from Products
--18)  select count(*) as total_orders from orders 
--19)  select categoryid, avg(unitprice) as ortalama_fiyat from Products
--group by categoryid
--20)  select (COUNT(CASE WHEN shippeddate IS NULL THEN 1 END) * 100.0 / COUNT(*)) AS teslim_edilmeyen
--FROM Orders 
--21)  select MAX(unitprice) AS highest_price, MAX(unitprice) * 1.10 AS updated_price from Products
--22)  select productname, SUBSTRING(productname, 1, 3) FROM Products
--23)  select strftime('%Y', OrderDate) AS OrderYear, strftime('%m', OrderDate) AS OrderMonth,  COUNT(*) AS Ordercount FROM Orders
--GROUP BY strftime('%Y', OrderDate), strftime('%m', OrderDate)
--ORDER BY OrderYear, OrderMonth
--24)  SELECT OrderID, round(sum(unitprice * quantity),2) as total_order_price from 'order details'
--group by orderid
--25)  select sum(unitprice) from Products where unitsinstock=0

select distinct City from Costumers;--Бардык клиенттердин шаарлары уникалдуу чыксын
SELECT * FROM Employees where BirthDate between '1950-1-1' and '1960-1-1';--Туулган жылы 1950 жана 1960 - жылдардын арасындагы ишкерлер чыксын
SELECT SupplierName,Country FROM Suppliers where Country='France ';--Франциялык поставщиктердин аттары жана мамлекети чыксын
SELECT CustomerName, Address, Country FROM Customers  where  CustomerName like 'A%' and Country not in ('Spain') ;--Олкосу Испаниядан башка, аты “A” дан башталган клиенттердин аты, адресси жана олкосу чыксын
SELECT * FROM Customers where PostalCode = '';--PostalCode бош болгон клиенттер чыксын
select * from Customers where City in ('London') limit 2;--Лондондон болгон клиенттердин биринчи эки клиентин чыгаргыла
select FirstName ,BirthDate from Employees where FirstName like ('____');--Фамилиясы 4 тамгадан турган ишкерлердин аты жана туулган жылдары чыксын
SELECT Country , count (*) FROM Suppliers group by Country;--Ар бир олкодо канчадан поставщик бар экенин чыгаргыла
SELECT Country , count (*) FROM Suppliers  group by Country having count(*)=1 order by count(*) asc ;--Поставщиктердин саны 1 эле болгон олколорду аты менен сорттоп чыгаргыла
select CategoryName, Unit*Price from Products join Categories c on Products.ProductID=c.CategoryID group by CategoryName;--Ар бир категориядагы продуктылардын жалпы суммасын чыгаргыла
SELECT min(Price), ProductName FROM Products join Categories c on Products.ProductID= c.CategoryID where c.CategoryID in (6,8) group by c.CategoryName;--6 жана 8 категориясындагы продуктылардын эн арзан баасын жана атын чыгаргыла
select s.SupplierName, * from Products join Suppliers s on Products.ProductID = s.SupplierID;--Продуктылар жана алардын поставщиктеринин аттары чыксын(сортировка болсун)
SELECT s.SupplierName, count(*) FROM Products join Suppliers s on Products.SupplierID=s.SupplierID group by s.SupplierName;--Ар бир поставщиктин канчадан продуктысы бар экени кемуу тартибинде сорттолуп чыксын
SELECT c.CustomerName, e.FirstName, s.ShipperName FROM Orders join Customers c on Orders.CustomerID=c.CustomerID join Employees e on Orders.EmployeeID=e.EmployeeID join Shippers s on Orders.ShipperID = s.ShipperID;--Клиенттердин аты CustomerName деп, ага саткан ишкерлердин аты жана алар кандай служба доставки колдонгону тууралуу маалымат чыксын
SELECT e.FirstName, count(*) FROM Customers join Orders o on Customers.CustomerID=o.CustomerID join Employees e on o.EmployeeID =e.EmployeeID group by e.FirstName;--Кайсы ишкер канча клиент обслуживайтеткен чыксын
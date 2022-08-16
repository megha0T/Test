select [ProductID],[LineTotal] from [Sales].[SalesOrderDetail] 


select [Name] from [Production].[Product] where Name like '%seat%' 


select * from [Sales].[SalesOrderHeader]
where[OrderDate] between '2011-06-13 00:00:00.000' and '2011-06-18 00:00:00.000'

select [FirstName] from [Person].[Person] where firstname like 's_e%'


select ascii ('r')

select color, class from Production . Product
group by color, class

declare @weekday int=0 
print @weekday

set @weekday = 100
print @weekday

select *
into production.productblacks
from Production.Product
where color='black'

/** 1 - create a new table based on product table*/


select * from [Person].[AddressType]
select * from [Sales].[SalesTerritory] cross join [Person].[AddressType]
order by TerritoryID , AddressTypeID 

select [ProductID] ,[Name]
from [Production].[Product]
where [ProductSubcategoryID]
IN (select [ProductSubcategoryID] from [Production].[ProductSubcategory] 
where [ProductCategoryID] IN ( select[ProductCategoryID]  from [Production].[ProductCategory]
where Name = 'Accessories'))

select ascii('t')
select char(101)
select right('hey my name is megha' ,5)

--1. find all products in the product category 'accessories'.
select p.name Productname, pc.name ProductCategoryname
from [Production].[Product] p
left join [Production].[ProductSubcategory] psc on psc.ProductSubcategoryID = p.ProductSubcategoryID 
left join [Production].[ProductCategory] pc on pc.ProductCategoryID = psc.ProductCategoryID
where pc.Name ='accessories'

--2. find the number of products in each product category--

select  [ProductCategoryID] pc ,[Name] pc, COUNT([ProductID] ) from [Production].[Product]
left join [Production].[ProductSubcategory] psc on psc.ProductSubcategoryID = p.ProductSubcategoryID 
left join [Production].[ProductCategory] pc on pc.ProductCategoryID = psc.ProductCategoryID
group by pc.ProductCategoryID ,pc.Name

---Select--
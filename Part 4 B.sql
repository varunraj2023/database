--Insert Queries:
INSERT INTO team VALUES (1,'Marsh','Manager',3500);
INSERT INTO team VALUES (2,'Joe','Technician',2500);
INSERT INTO team VALUES (3,'Clark','Assisstant',2000);

Select * from team;

--Update Queries

update  customer set PetType='Small Dog'
where CustomerID=2;

update  customer set Name='Josh'
where CustomerID=3;


SELECT * from customer;


--Delete Query
DELETE from team where EmployeeID = 1;

Select * from team;

--Simple Select Query
Select * from petproduct where ProductID = 2;

--Select Statement with Joins
SELECT A.*, B.* FROM customer_product_sale A left join petproduct B ON A.ProductID=B.ProductID;

SELECT A.*, B.* FROM customer A RIGHT join customer_product_sale B ON A.CustomerID=B.CustomerID;


--Summary Functions
SELECT Price,COUNT(SaleID) FROM customer_product_sale group by SaleID;

SELECT SupplychainID, count(*) FROM supplychain group by SupplychainID;

--MultiTable Query
SELECT A.*, B.ProductID, B.PetType, C.CustomerID FROM customer_product_sale A inner join petproduct B
ON A.ProductID=B.ProductID inner join customer C
ON B.ProductID=C.CustomerID;

--Add ENUM
ALTER TABLE petproduct add column ThemeColor ENUM ('Dark','Light') not null ;

--Adding COnstraint Not Null
alter table petproduct modify ThemeColor varchar(50) not null;

--Insert Data:
INSERT INTO petproduct VALUES (4,'Item 1','Beauty','male','Dark','Yes','No','light',9,'Dark');

--Update the new Inserted data

Update petproduct set ThemeColor = 'Light' where ProductID = 4;

--Delete the newly added record

DELETE from petproduct where ProductID = 4;

SELECT * from petproduct;

--Add auto increment column
Alter table network add column NetworkNumber int AUTO_INCREMENT not null unique key;



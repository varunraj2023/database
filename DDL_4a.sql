create table PetProduct (
ProductID int PRIMARY key ,
ProductName varchar(50),
Category varchar (100),
PetType varchar (50),
Theme varchar(50),
BioSafeMaterial varchar(50),
TechnologyComponents varchar (50),
ThemedAccessories varchar(50),
Quantity int
);

create table team (
EmployeeID int PRIMARY key ,
Name varchar(50),
Designation varchar (100),
Salary int
);

create table Supplychain (
SupplychainID int PRIMARY key ,
RawmaterialName varchar(50),
SupplierName varchar (50),
Quantity int,
Unitprice int
);


create table Network(
NetworkComponent varchar(50) ,
IPAddress varchar(50),
Description varchar(50)
);

create table Customer(
CustomerID int PRIMARY key ,
Name varchar (50),
PetType varchar(50),
PetAge int,
Address varchar(10),
Phone varchar(50)
);

create table Customer_Product_Sale(
SaleID int PRIMARY KEY,
ProductID int,
CustomerID int,
Price int,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ,
FOREIGN KEY (ProductID) REFERENCES PetProduct(ProductID)
)






LOAD DATA INFILE 'D:\PetProduct.csv' 
INTO TABLE petproduct
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\SupplyChain.csv' 
INTO TABLE supplychain  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\team.csv' 
INTO TABLE team  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\Network.csv' 
INTO TABLE network  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\Customer.csv' 
INTO TABLE customer  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'D:\Customer_Product_Sale.csv' 
INTO TABLE customer_product_sale  
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;


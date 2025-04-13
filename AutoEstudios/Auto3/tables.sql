CREATE TABLE Customer (
    CustomerID NUMBER,
    FirstName VARCHAR2(50),
    MiddleName VARCHAR2(50),
    LastName VARCHAR2(50),
    CompanyName VARCHAR2(100),
    EmailAddress VARCHAR2(100)
);

CREATE TABLE Address (
    AddressID NUMBER,
    AddressLine1 VARCHAR2(255),
    AddressLine2 VARCHAR2(255),
    City VARCHAR2(100),
    StateProvince VARCHAR2(100),
    CountyRegion VARCHAR2(100),
    PostalCode VARCHAR2(20)
);

CREATE TABLE CustomerAddress (
    CustomerID NUMBER,
    AddressID NUMBER,
    AddressType VARCHAR2(50)
);

CREATE TABLE SalesOrderHeader (
    SalesOrderID NUMBER,
    RevisionNumber NUMBER,
    OrderDate DATE,
    CustomerID NUMBER,
    BillToAddressID NUMBER,
    ShipToAddressID NUMBER,
    ShipMethod VARCHAR2(100),
    SubTotal NUMBER(10,2),
    TaxAmt NUMBER(10,2),
    Freight NUMBER(10,2)
);

CREATE TABLE SalesOrderDetail (
    SalesOrderID NUMBER,
    SalesOrderDetailID NUMBER,
    OrderQty NUMBER,
    ProductID NUMBER,
    UnitPrice NUMBER(10,2),
    UnitPriceDiscount NUMBER(10,2)
);

CREATE TABLE ProductModel (
    ProductModelID NUMBER,
    Name VARCHAR2(100)
);

CREATE TABLE ProductCategory (
    ProductCategoryID NUMBER,
    ParentProductCategoryID NUMBER,
    Name VARCHAR2(100)
);

CREATE TABLE Product (
    ProductID NUMBER,
    Name VARCHAR2(100),
    Color VARCHAR2(50),
    ListPrice NUMBER(10,2),
    SizeP VARCHAR2(50),
    Weight NUMBER(10,2),
    ProductModelID NUMBER,
    ProductCategoryID NUMBER
);

CREATE TABLE ProductDescription (
    ProductDescriptionID NUMBER,
    Description VARCHAR2(255)
);

CREATE TABLE ProductModelProductDescription (
    ProductModelID NUMBER,
    ProductDescriptionID NUMBER,
    Culture VARCHAR2(10)
);

SELECT
    TABLE_NAME
FROM
    USER_TABLES
ORDER BY
    TABLE_NAME;


SELECT * FROM USER_CONSTRAINTS;
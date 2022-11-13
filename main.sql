
create table product(brand char(15), ProductType char(15),ProductSize char(20),CategoryName char(15),CategoryID int, ProductAvailable char(5), ProductID int, ProductName char(25), primary key (ProductID));
  

create table orders(OrderedItems int, TotalPrice int, OrderDate char(20),ProductID int, OrderID int, primary key(OrderID), foreign key(ProductID) references product(ProductID)
  
  on delete cascade
  on update cascade );

create table customer(ID int, Name char(15), City Char(20), PhoneNumber char(12), Email char(30), Street char(15), OrderID int, primary key(ID), Foreign key(orderID) references orders(orderID));

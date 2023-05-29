Create Database Test1
create table Sale (SalesID tinyint,
                   OrderID tinyint,
				   Customer char(10),
				   Product char(10),
				   D tinyint,
				   Quantity tinyint,
				   UnitPrice smallmoney,
				   Primary key(SalesID));

create table Profit (Product char(10),
				     ProfitRatio tinyint,
	                 Primary key(Product));

insert into Sale values  ( 1, 1,'C1','P1', 1, 2, 100),
                         ( 2, 1,'C1','P2', 1, 4, 150),
						 ( 3, 2,'C2','P2', 1, 5, 150),
						 ( 4, 3,'C3','P4', 1, 3, 550),
						 ( 5, 4,'C4','P3', 1, 1, 300),
						 ( 6, 4,'C4','P6', 1, 6, 150),
						 ( 7, 4,'C4','P4', 1, 6, 550),
						 ( 8, 5,'C5','P2', 1, 3, 150),
						 ( 9, 5,'C5','P1', 1, 6, 100),
						 ( 10, 6,'C1','P6', 1, 3, 150),
						 ( 11, 6,'C1','P3', 1, 2, 300),
						 ( 12, 7,'C3','P5', 1, 4, 400),
						 ( 13, 7,'C3','P1', 1, 6, 100),
						 ( 14, 7,'C3','P3', 1, 1, 300),
						 ( 15, 8,'C5','P2', 1, 3, 150),
						 ( 16, 8,'C5','P5', 1, 4, 400),
						 ( 17, 8,'C5','P1', 1, 2, 100),
						 ( 18, 9,'C2','P3', 2, 1, 300),
						 ( 19, 9,'C2','P4', 2, 3, 550),
						 ( 20, 9,'C2','P5', 2, 6, 400),
						 ( 21, 9,'C2','P1', 2, 4, 100),
						 ( 22, 10,'C4','P6', 2, 3, 150),
						 ( 23, 11,'C6','P3', 2, 2, 300),
						 ( 24, 11,'C6','P4', 2, 3, 550),
						 ( 25, 12,'C7','P1', 2, 5, 100),
						 ( 26, 12,'C7','P2', 2, 3, 150),
						 ( 27, 12,'C7','P3', 2, 1, 300),
						 ( 28, 13,'C2','P1', 2, 4, 100),
						 ( 29, 13,'C2','P3', 2, 2, 300),
						 ( 30, 14,'C6','P2', 2, 6, 150),
						 ( 31, 15,'C4','P6', 2, 1, 150),
						 ( 32, 16,'C1','P4', 3, 6, 550),
						 ( 33, 17,'C2','P5', 3, 3, 400),
						 ( 34, 18,'C8','P1', 3, 6, 100),
						 ( 35, 18,'C8','P3', 3, 3, 300),
						 ( 36, 18,'C8','P5', 3, 5, 400),
						 ( 37, 19,'C9','P2', 3, 2, 150),
						 ( 38, 20,'C2','P3', 3, 3, 300),
						 ( 39, 20,'C2','P1', 3, 4, 100),
						 ( 40, 20,'C2','P2', 3, 1, 150);
select * from Sale;
insert into Profit values ('P1', 5),
                          ('P2', 25),
						  ('P3', 10),
						  ('P4', 20),
						  ('P5', 10),
						  ('P6', 25);
select * from Profit;
#Q1
select sum (Quantity*UnitPrice) from Sale;
#Q2
select count (DISTINCT Customer)  from Sale;
#Q3
select COUNT(Quantity) from Sale
group by Product;
#Q4
alter table Sale
add TotalPrice smallmoney;
update Sale set TotalPrice = Quantity*UnitPrice;
select Customer, Product, Quantity,TotalPrice  from Sale where TotalPrice>=1500;
#Q6
select COUNT(DISTINCT Customer) from Sale
group by D;
#partB
create table Leveling (ID tinyint,
				       FirstName char(10),
					   Manager char(10),
					   ManagerID tinyint,
	                   Primary key(ID));
insert into Leveling values (1, 'Ken',null,null),
                            (2, 'Hugo',null,null),
							(3, 'James','Carol',5),
							(4, 'Mark','Morgan',13),
							(5, 'Carol','Alex',12),
							(6, 'David','Rose',21),
							(7, 'Michael','Markos',11),
							(8, 'Brad','Alex',12),
							(9, 'Rob','Matt',15),
							(10, 'Delan','Alex',12),
							(11, 'Markos','carol',5),
							(12, 'Alex','Ken',1),
							(13, 'Morgan','Matt',15),
							(14, 'Jennifer','Morgan',13),
							(15, 'Matt','Hugo',2),
							(16, 'Tom','Brad',8),
							(17, 'Oliver','Dylan',10),
							(18, 'Daniel','Rob',9),
							(19, 'Amanda','Markos',11),
							(20, 'Ana','Dylan',10),
							(21, 'Rose','Rob',9),
							(22, 'Robert','Rob',9),
							(23, 'Fill','Morgan',13),
							(24, 'Antoan','David',6),
							(25, 'Eddie','Mark',4);
select * from Leveling;	
select FirstName, Manager, ManagerID from Leveling order by ManagerID; 
select FirstName from Leveling where ManagerID is null; 
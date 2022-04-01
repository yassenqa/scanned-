create table sales(
did integer,
names varchar(50),
dateproduce date,
quantityavaiable integer,
companymanufactured varchar(50),
numberproduct int,
primary key (did)
);
create type namez as object(
firstname varchar(50),
mname varchar(50),
lname varchar(50)
);

CREATE TYPE email AS VARRAY(5) OF VARCHAR2(25);

create type credetcard as object(
idc int,
finishdate date,
securityc int
);

create table purchaseorder(
idorder int,
namez,
email,
credetcard,
orderbuy int,
numbercountry number,
numberproduct int

);
create table customer (
did int,
namez,
numbercountry number,

)

select * from customer inner join purchaseorder
on namez.customer=namez.purchaseorder

select * from purchaseorder inner join sales
on purchaseorder.numberproduct=sales.numberproduct
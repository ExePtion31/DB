create database funcioness;
use funcioness;
  
create table Producto(
CodigoProducto int(11) primary key,
Nombre varchar(100),
Precio decimal(18,2));

create table Venta(
CodigoVenta int(11) primary key,
Cliente varchar(100),
Fecha datetime);

create table Detalleventa(
ID_Venta int(2) not null auto_increment primary key,
CodigoVenta int(11),
CodigoProducto int(11),
Cantidad decimal(18,2),
Descuento decimal(18,2),
foreign key(CodigoVenta) references Venta(CodigoVenta),
foreign key(CodigoProducto) references Producto(CodigoProducto));


/*TABLAS TRIGGERS*/
create table Seguro_Producto(
CodigoProducto int(11) primary key,
Nombre varchar(100),
Precio decimal(18,2),
Fecha_Producto varchar(11),
Accion_Producto varchar(11));


/*INSERT VALUES*/
insert into Producto(CodigoProducto, Nombre, Precio)
values ('000001','Agua','2000'),
	   ('000002','Pollo','5600'),
       ('000003','Papas','1300'),
       ('000004','Yogurt','2000'),
       ('000005','Arroz','5600');
       
insert into Venta(CodigoVenta, Cliente, Fecha)
values ('0000001','Federico Perez','2019/08/22'),
	   ('0000002','Antonio Rodriguez','2019/08/19'),
       ('0000003','Laura Lozano','2019/07/27'),
       ('0000004','Juan Ochoa','2019/10/02'),
       ('0000005','Maria Gonzales','2019/10/05');
       
insert into Detalleventa(CodigoVenta, CodigoProducto, Cantidad, Descuento)
values ('000001','0000001','4','3.4'),
	   ('000002','0000002','3','2.5'),
       ('000003','0000003','10','1.3'),
       ('000004','0000004','11','1.7'),
       ('000005','0000005','4','7.4');
       
       
/*CREATE VIEW*/

create view Vista1 
As
Select
DetalleVenta.CodigoVenta,
Producto.Nombre,
Producto.Precio,
Venta.Cliente,
Venta.Fecha
from 
DetalleVenta, Producto, Venta
where Producto.CodigoProducto = Venta.CodigoVenta;





/*TRIGGERS*/


/*1*/
DELIMITER //
CREATE TRIGGER Insert_Producto BEFORE INSERT ON Producto FOR EACH ROW
BEGIN
      INSERT INTO Seguro_Producto VALUES(new.CodigoProducto, new.Nombre, new.Precio, curdate(), 'Agregado');
END;

// DELIMITER ;
;


insert into Producto(CodigoProducto, Nombre, Precio)
values ('000006','Lechuga','1200');
 
select*from Seguro_Producto;


/*2*/
DELIMITER //
CREATE TRIGGER Update_Producto BEFORE UPDATE ON Producto FOR EACH ROW
BEGIN
      INSERT INTO Seguro_Producto VALUES(new.CodigoProducto, new.Nombre, new.Precio, curdate(), 'Modificado');
END;

// DELIMITER ;
;

Update Producto set Nombre="Gomitas", Precio="3500" where CodigoProducto = "000001";

/*3*/
DELIMITER //
CREATE TRIGGER Delete_Producto BEFORE DELETE ON Producto FOR EACH ROW
BEGIN
      INSERT INTO Seguro_Producto VALUES(old.CodigoProducto, old.Nombre, old.Precio, curdate(), 'Eliminado');
END;

// DELIMITER ;
;


 
       
       
       
       



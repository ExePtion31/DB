create database Parcial;
use Parcial;

create table Cliente (
CedulaC int (100),
NombreC varchar (100),
ApellidosC varchar (100),
DireccionC varchar (100),
EmailC varchar(100),
ContraseñaC text (16383),
ImagenC varchar(100),
CodigoPosC varchar(100),
LocalidadC varchar (100),
Telefono int (10),
primary key(CedulaC));

create table MesPago (
ID_M int (100),
ID_Emple int (100),
ID_Producto int (100),
Canti int (100),
Comision int (100),
TotalS int (100),
Primary key ( ID_M),
foreign key(ID_Emple) references Empleado(CedulaE),
foreign key(ID_Producto) references Producto(ID_Producto));
   
create table Factura(
Nfactura int auto_increment,
CedulaC int (100),
ID_producto int (100),
Cantidad_p int (100),
Pago int (100),
importe int (100),
envio date,
fehca date ,
primary key( NFactura),
foreign key(CedulaC) references Cliente(CedulaC),
foreign key(ID_Producto) references Producto(ID_Producto));

create table Producto (
ID_Producto int (100),
Tamaño int (100),
TipoPapel varchar(100),
acabado varchar(100),
impresion varchar(100),
descripcion varchar (100),
Precio int (100),
Imagenproducto varchar (100),
Nombre_Producto varchar (100),
Diseño int (100),
primary key (ID_Producto),
foreign key(Diseño) references Diseño(ID_Diseño));

create table Diseño (
ID_Diseño int (100),
Tamaño_Diseño int (100),
Formato varchar(100),
primary key(ID_Diseño));

create table Empleado (
CedulaE int (100),
NombreE varchar (100),
ApellidosE varchar (100),
DireccionE varchar (100),
EmailE varchar(100),
ContraseñaE varchar (100),
Salario int(100),
Seguridad_Social  varchar (100),
Telefono int (10),
Departamento_P int (100),
Producto_Re int (100),
primary key(CedulaE),
foreign key(Producto_Re) references Producto(ID_Producto),
foreign key(Departamento_P) references Departamento(ID_Departamento));
 
create table Departamento (
ID_Departamento int auto_increment,
Nombre_Dep varchar (100),
Email_Dep varchar(100),
primary key (ID_Departamento ));
   
create table historialp (
ID int auto_increment ,
ID_Diseño int (100),
Tamaño_Diseño int (100),
Formato varchar(100),
fecha datetime ,
Accion varchar(100),
Primary key (ID));



/* _______________________________________________ INSERTAR DATOS _______________________________________________*/

/* __________ EMPLEADOS _____________*/
insert into Empleado values (1010046820, 'Pedro', 'Capon', 'Cll 1', 'Pedro@gmail.com', '244142A', 600000, '122945', 21355454, 1, 1);
insert into Empleado values (1010046821, 'Mario', 'Gonzales', 'Cll 2', 'Mario@gmail.com', '244142B', 700000, '122335', 21355454, 2, 2);
insert into Empleado values (1010046822, 'Roberto', 'Perez', 'Cll 3', 'Roberto@gmail.com', '244142C', 800000, '122745', 21355454, 3, 3);
insert into Empleado values (1010046823, 'Gonzalo', 'Nariño', 'Cll 4', 'Gonzalo@gmail.com', '244142D', 900000, '122645', 21355454, 4, 4);
insert into Empleado values (1010046824, 'Lady', 'Nariño', 'Cll 5', 'Lady@gmail.com', '244142E', 1000000, '125445', 21355454, 5, 5);
insert into Empleado values (1010046825, 'Luisa', 'Nariño', 'Cll 6', 'Luisa@gmail.com', '244142F', 1100000, '122445', 21355454, 6, 6);
insert into Empleado values (1010046826, 'Giovanni', 'Nariño', 'Cll 7', 'Giovanni@gmail.com', '244142G', 1200000, '122445', 21355454, 7, 7);
insert into Empleado values (1010046827, 'Fernanda', 'Nariño', 'Cll 8', 'Fernanda@gmail.com', '244142H', 1300000, '122445', 21355454, 8, 8);
insert into Empleado values (1010046828, 'Juan', 'Nariño', 'Cll 9', 'Juan@gmail.com', '244142I', 1400000, '122445', 21355454, 9, 9);
insert into Empleado values (1010046829, 'Lorena', 'Nariño', 'Cll 10', 'Lorena@gmail.com', '244142J', 1500000, '122445', 21355454, 10, 10);

/* _________ DEPARTAMENTOS ____________*/

insert into Departamento values (null, 'Software', 'Software@gmail.com');
insert into Departamento values (null, 'Hoteleria', 'Hoteleria@gmail.com');
insert into Departamento values (null, 'Administracion', 'Administracion@gmail.com');
insert into Departamento values (null, 'Administracion', 'Administracion@gmail.com');
insert into Departamento values (null, 'Movilidad', 'Movilidad@gmail.com');
insert into Departamento values (null, 'Relaciones', 'Relaciones@gmail.com');
insert into Departamento values (null, 'Administracion', 'Administracion@gmail.com');
insert into Departamento values (null, 'Movilidad', 'Movilidad@gmail.com');
insert into Departamento values (null, 'Movilidad', 'Movilidad@gmail.com');
insert into Departamento values (null, 'Relaciones', 'Relaciones@gmail.com');


/* _______________ DISEÑO _________________ */
insert into Diseño values (1, 2321, 'Color1');
insert into Diseño values (2, 313, 'Color2');
insert into Diseño values (3, 3213, 'Color3');
insert into Diseño values (4, 7712, 'Color4');
insert into Diseño values (5, 4345, 'Color5');
insert into Diseño values (6, 54312, 'Color6');
insert into Diseño values (7, 7544, 'Color7');
insert into Diseño values (8, 7432, 'Color8');
insert into Diseño values (9, 75474, 'Color9');
insert into Diseño values (10, 777, 'Vegetita');


/* _______________ PRODUCTOS _________________ */

insert into Producto values(1, 150, 'Rosado', 'Morado', '320tbc', 'Rolls0', 12500, '1.jpg', 'Royce0',1 );
insert into Producto values(2, 100, 'Rosado', 'Morado', '321tbc', 'Rolls1', 13500, '2.jpg', 'Royce1',2 );
insert into Producto values(3, 333, 'Rosado', 'Morado', '322tbc', 'Rolls2', 14500, '3.jpg', 'Royce2',3 );
insert into Producto values(4, 444, 'Rosado', 'Morado', '323tbc', 'Rolls3', 15500, '4.jpg', 'Royce3',4);
insert into Producto values(5, 555, 'Rosado', 'Morado', '324tbc', 'Rolls4', 55500, '5.jpg', 'Royce4',5 );
insert into Producto values(6, 666, 'Rosado', 'Morado', '325tbc', 'Rolls5', 66500, '6.jpg', 'Royce5',6 );
insert into Producto values(7, 777, 'Rosado', 'Morado', '326tbc', 'Rolls6', 73500, '7.jpg', 'Royce6',7);
insert into Producto values(8, 888, 'Rosado', 'Morado', '327tbc', 'Rolls7', 18500, '8.jpg', 'Royce7',8 );
insert into Producto values(9, 999, 'Rosado', 'Morado', '328tbc', 'Rolls8', 93500, '9.jpg', 'Royce8',9 );
insert into Producto values(10, 1000, 'Rosado', 'Morado', '329tbc', 'Rolls9', 103500, '10.jpg', 'Royce9',10 );


/* ___________________ CLIENTES _____________________*/
insert into Cliente values (998483980, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778230A','1.jpg', '213123', 'Soacha',3102202180);
insert into Cliente values (998483981, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778231A','2.jpg', '213123', 'Soacha',3102202181);
insert into Cliente values (998483982, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778232A','3.jpg', '213123', 'Soacha',3102202182);
insert into Cliente values (998483983, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778233A','4.jpg', '213123', 'Soacha',3102202183);
insert into Cliente values (998483984, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778234A','5.jpg', '213123', 'Soacha',3102202184);
insert into Cliente values (998483985, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778235A','6.jpg', '213123', 'Soacha',3102202185);
insert into Cliente values (998483986, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778236A','7.jpg', '213123', 'Soacha',3102202186);
insert into Cliente values (998483987, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778237A','8.jpg', '213123', 'Soacha',3102202187);
insert into Cliente values (998483988, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778238A','9.jpg', '213123', 'Soacha',3102202188);
insert into Cliente values (998483989, 'Mario', 'Gonzales', 'Cll 12F', 'MarioG@gmail.com', '98778239A','10.jpg', '213123', 'Soacha',3102202189);


/* _________________ FACTURA ____________________ */
call parcialf.Factura (1007703310, 1, 3000, ,16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703311, 2, 2500, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703312, 3, 3500, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703313, 4, 4000, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703314, 5, 5000, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703315, 6, 2000, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703316, 7, 3000, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703317, 8, 3600, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703318, 9, 1000, 16, '2019/11/11', '2019/11/11', @_estado1);
call parcialf.Factura (1007703319, 10, 3000, 16, '2019/11/11', '2019/11/11', @_estado1);

/* ____________________ MES _____________________ */
call parcialf.Mes(1, 1007703310, 1, 3500, @_estado1);
call parcialf.Mes(2, 1007703311, 2, 3500, @_estado1);
call parcialf.Mes(3, 1007703312, 3, 3500, @_estado1);
call parcialf.Mes(4, 1007703313, 4, 3500, @_estado1);
call parcialf.Mes(5, 1007703314, 5, 3500, @_estado1);
call parcialf.Mes(6, 1007703315, 6, 3500, @_estado1);
call parcialf.Mes(7, 1007703316, 7, 3500, @_estado1);
call parcialf.Mes(8, 1007703317, 8, 3500, @_estado1);
call parcialf.Mes(9, 1007703318, 9, 3500, @_estado1);
call parcialf.Mes(10, 1007703319, 10, 3500, @_estado1);


/* _____________________________ TRIGGERS __________________________________ */
CREATE TRIGGER insertar BEFORE INSERT ON Diseño FOR EACH ROW
INSERT INTO historialP
VALUES ( null,new.ID_Diseño,new.Tamaño_Diseño, new.Formato, curdate(),"Agregado");
 
CREATE TRIGGER Borrar BEFORE DELETE   ON Factura FOR EACH ROW
INSERT INTO historialP
VALUES ( null, old.CedulaC,old.ID_Producto, old.Cantidad_p,old.Pago,old.importe,old.envio, curdate(),"Borrado");
 
CREATE TRIGGER Modificar  BEFORE UPDATE ON Factura FOR EACH ROW
INSERT INTO historialP
VALUES ( null, new.CedulaC,new.ID_Producto, new.Cantidad_p,new.Pago,new.importe,new.envio, curdate(),"Modificado");


/* __________________________VISTAS____________________________ */


/* ___ VISTA #1 ___*/
create view Vista1
as
select
Producto.Nombre_Producto,
Producto.Precio,
Empleado.CedulaE,
Diseño.ID_Diseño
from
Producto,Empleado,Diseño
where Producto.ID_Producto=Empleado.Producto_Re and Producto.Diseño = Diseño.ID_Diseño;


/* ___ VISTA #2 ___*/
create view Vista2
as
select
Producto.Nombre_Producto,
Producto.Precio,
Cliente.CedulaC,
Factura.Nfactura,
Factura.Pago
from
Producto,Cliente,Factura
where Producto.ID_Producto=Factura.ID_Producto and Factura.CedulaC = Cliente.CedulaC;

/* ___ VISTA #3 ___*/
create view Vista3
as
select
Empleado.CedulaE,
Empleado.NombreE,
Empleado.Salario,
MesPago.TotalS,
MesPago.Canti,
Empleado.Producto_Re
from
Empleado,MesPago
where Empleado.CedulaE=MesPago.ID_Emple ;
   
   
/* _____________________________ PROCEDIMIENTOS ________________________________ */


/* _____ PROCEDIMIENTO #1 ____ */
delimiter $
create Procedure Insertar  (in _CedulaC int (100),
in _NombreC varchar  (100),
in _ApellidosC varchar (100),
in _DireccionC varchar (100),
in _EmailC varchar(100),
in _ContraseñaC varchar (1000),
in _ImagenC varchar(100),
in _CodigoPosC varchar(100),
in _LocalidadC varchar (100),
in _Telefono int (10),
in  _Modo char(1),
out  _estado varchar (100))
begin
set @Accion= _Modo;
set @Contador=0;
CASE @Accion  
WHEN '1' THEN
select count(*) into @Contador from Cliente where CedulaC = _CedulaC;
if @Contador = 0 then
insert into  CLiente values  (_CedulaC, _NombreC ,_ApellidosC,_DireccionC,_EmailC,md5(_ContraseñaC),_ImagenC,_CodigoPosC,_LocalidadC,_Telefono);
set _estado ="ingresado";
else
set _estado  ="usuario ya registrado ";
end if;
When '2' then
delete from CLiente where CedulaC=_CedulaC;
set _estado ="ingresado";
when '3' then
update Cliente set NombreC=_NombreC where CedulaC = _CedulaC;
update Cliente set ApellidosC=_ApellidosC where CedulaC = _CedulaC;
update Cliente set DireccionC=_DireccionC where CedulaC = _CedulaC;
update Cliente set EmailC=_EmailC where CedulaC = _CedulaC;
update Cliente set ContraseñaC=_ContraseñaC where CedulaC = _CedulaC;
update Cliente set ContraseñaC=_ContraseñaC where CedulaC = _CedulaC;
update Cliente set ImagenC=_ImagenC where CedulaC = _CedulaC;
update Cliente set CodigoPosC=_CodigoPosC where CedulaC = _CedulaC;
update Cliente set LocalidadC=_LocalidadC where CedulaC = _CedulaC;
update Cliente set Telefono=_Telefono where CedulaC = _CedulaC;
end case;
end
$


/* _____ PROCEDIMIENTO #2 _____ */
delimiter $
create procedure Diseño (  in _ID_Diseño int (100),
in _Tamaño_Diseño int (100),
in _Formato varchar(100),
out  _estado1 varchar (100))
begin
set @Contador = 0;
set @ID  = _ID_Diseño ;
select count(*) into @Contador from Diseño  where ID_Diseño = _ID_Diseño;
if @Contador = 0 then
insert into  Diseño values ( _ID_Diseño, _Tamaño_Diseño,_Formato);
set _estado1 = "registrado";
else
set _estado1 = "Diseño ya resgistrado ";
end if ;
end
$



/* _____ PROCEDIMIENTO #3 ____ */
delimiter $
create procedure Factura ( in _CedulaC int (100) ,
in _ID_Producto int (100),
in _Cantidad_p  int (100),
in _importe int(100),
in _envio date  ,
in _fehca date,
out _estado1 varchar (100))						
begin
set @Contador = 0;
set @Pago = parcialf.Pago(_Cantidad_p, _ID_Producto);
set @Importe =parcialf.Impu(@Pago, _importe);
set @Total = @Pago - @Importe;
insert into  Factura  (CedulaC, ID_Producto , Cantidad_p , Pago, importe, envio,fehca)
values ( _CedulaC, _ID_Producto,_Cantidad_p,@Total, @Importe ,_envio , _fehca  );
set _estado1 = "registrado";
end
$


/* _____ PROCEDIMIENTO #4 ____ */
delimiter $
create procedure Producto ( in _ID_Producto int (100),
in _Tamaño int (100),
in _TipoPapel varchar(100),
in _acabado varchar(100),
in _impresion varchar(100),
in _descripcion varchar (100),
in _Precio int (100),
in _Imagenproducto varchar (100),
in _Nombre_Producto varchar (100),
in _Diseño int (100),
out _estado1 varchar(100))
begin
set @Contador= 0;
select count(*) into @Contador from Producto  where ID_Producto = _ID_Producto;
if @Contador = 0 then
insert into  Producto values (_ID_Producto, _Tamaño ,_TipoPapel ,_acabado ,_impresion ,_descripcion , _Precio ,_Imagenproducto ,_Nombre_Producto ,_Diseño );
set _estado1 = "registrado";
else
set _estado1= "Producto ya resgitrado";
end if;
end
$


/* _____ PROCEDIMIENTO #5 ____ */
delimiter $
create procedure Departamento ( in  _Nombre_Dep varchar (100),
in  _Email_Dep varchar(100),
out _estado1 varchar (100))
begin
set @Contador=0;
insert into  Departamento ( Nombre_Dep ,Email_Dep )
values (  _Nombre_Dep, _Email_Dep );
set _estado1 ="ingresado";
end
$


/* _____ PROCEDIMIENTO #6 ____ */
delimiter $
create procedure Empleado  (  in _CedulaE int (100),
in _NombreE varchar (100),
in _ApellidosE varchar (100),
in _DireccionE varchar (100),
in _EmailE varchar(100),
in _ContraseñaE varchar (100),
in _Salario int(100),
in _Seguridad_Social  varchar (100),
in _Telefono int (10),
in _Departamento_P int (100),
in _Producto_Re int (100),
out _estado1 varchar (100))
begin
set @Contador =0;
set @Contra= md5(_ContraseñaE);
select count(*) into @Contador from Empleado where CedulaE = _CedulaE;
if @Contador = 0 then
insert into  Empleado values  ( _CedulaE ,_NombreE ,_ApellidosE ,_DireccionE ,_EmailE ,_ContraseñaE ,_Salario  ,_Seguridad_Social, _Telefono , _Departamento_P ,_Producto_Re );
set _estado1 ="ingresado";
else
set _estado1  ="Empelado ya registrado ";
end if;
end
$

/* _____ PROCEDIMIENTO #6 ____ */
delimiter $
create Procedure Mes ( in _ID_M int(100),
in _ID_Emple int (100),
in _ID_Producto int (100),
in _Canti int (100),
out _estado1 varchar (100))
begin
set @Total =0;                      
set @Contador =_Canti;
set @Con=0;
set @Sal = 0;
select count(*) into @Con from MesPago where MesPago.ID_Emple=_ID_Emple;
if @Con =0 then
if @Contador >= 3000 then
select Salario into @Sal from Empleado where Empleado.CedulaE=_ID_Emple;
set @Total1= parcialf.Comision(@Sal);
set @Total2= parcialf.Salariototal(@Sal, @Total1);
insert into  MesPago values  ( _ID_M ,_ID_Emple ,_ID_Producto ,_Canti ,@Total1 ,@TOtal2  );
set _estado1 ="El empleado a alcanzado la meta";
else
select Salario into @Sal from Empleado where Empleado.CedulaE=_ID_Emple;
insert into  MesPago values  ( _ID_M ,_ID_Emple ,_ID_Producto ,_Canti ,"0" ,@Sal  );
set _estado1  ="Empelado no alcanzo la meta ";
end if;
else
set _estado1= "Registro ya creado";
end if;
end
$

/* _____________________ FUNCIONES __________________________ */
delimiter //
CREATE FUNCTION Pago( Cant  int(100) ,  ID_P int (100)) RETURNS int(100)
DETERMINISTIC
BEGIN

DECLARE Total int (100);
set @ID = 0;
select Precio into @ID from  Producto where ID_Producto = ID_P;
  SET Total = @ID * Cant  ;
  RETURN Total;
END
//

delimiter //
CREATE FUNCTION Impu( Pago  int(100), importe int (100) ) RETURNS int(100)
DETERMINISTIC
BEGIN

DECLARE Total int (100);
set  @Subtotal = importe /100;

  SET Total =Pago * @Subtotal ;
  RETURN Total;
END
//
delimiter //
CREATE FUNCTION Comision( Salario  int(100) ) RETURNS int(100)
DETERMINISTIC
BEGIN

DECLARE Total int (100);
set  @Subtotal = 0.1;

  SET Total =Salario * @Subtotal ;
  RETURN Total;
END
//
delimiter //
CREATE FUNCTION Salariototal( Salario  int(100) , Comision int (100)) RETURNS int(100)
DETERMINISTIC
BEGIN

DECLARE Total int (100);
set  @Subtotal = Comision;

  SET Total =Salario + @subtotal ;
  RETURN Total;
END
//
create database Parcial;
use Parcial;

/*-----------TABLAS--------*/
create table Cliente(
ID_Cli int auto_increment,
Nombre_Cli varchar(20) not null,
Apellido_Cli varchar(20) not null,
Direccion_Cli varchar(20) not null,
Email_Cli varchar(20) not null,
Password_Cli varchar(20) not null,
Imagen_Cli varchar(20) not null,		
Cod_postal_Cli int(10)not null,
Localidad_Cli varchar(20) not null,
Telefono_Cli int(10) not null,
primary key(ID_Cli));

create table Cliente_historial(
Nombre_Cli_historial varchar(20) not null,
Apellido_Cli_historial varchar(20) not null,
Direccion_Cli_historial varchar(20) not null,
Email_Cli_historial varchar(20) not null,
Password_Cli_historial varchar(20) not null,
Imagen_Cli_historial varchar(20) not null,
Cod_postal_Cli_historial int(10) not null,
Localidad_Cli_historial varchar(20)not null,
Telefono_Cli_historial int(10)not null,
Fecha_Accion date not null,
Accion varchar(20)not null);

create table Factura(
N_Factura 	int auto_increment,
Pago double not null,
Importe varchar(10)not null,
Envio varchar(10)not null,
Fecha date not null,
primary key(N_Factura),
foreign key(N_Factura) references Cliente(ID_Cli));

create table Producto(
Id_Producto int auto_increment,
Nombre_Producto varchar(20)not null,
imagen_Producto varchar(20)not null,
Precio_Producto double not null,
Descripcion_Producto varchar(20)not null,
Impresion varchar(20)not null,
Acabado varchar(20)	not null,
Tipo_Papel varchar(20)not null,
Tamaño_Producto varchar(20)not null, 
primary key(Id_Producto),
foreign key(Id_Producto) references Factura(N_Factura));

create table Diseño(
Id_Diseño int auto_increment,
Tamaño_Diseño varchar(20)not null,
Formato varchar(20)not null,
primary key(Id_Diseño),
foreign key (Id_Diseño) references Producto(Id_Producto));

create table Departamento(
Id_Departamento int auto_increment,
Nombre_Departamento varchar(20) not null,
Email_Departamento 	varchar(20) not null,
primary key(Id_Departamento));

create table Empleado(
Id_Emp int auto_increment,
Nombre_Emp varchar(20)not null,
Apellido_Emp varchar(20)not null,
Email_Emp varchar(20) not null,
Password_Emp varchar(20)not null,
Direccion_Emp varchar(20) not null,
Salario double not null,
Comision double not null,
Telefono_Emp int(10)not null,
SS varchar(20)not null,
primary key(Id_Emp),
foreign key(Id_Emp) references Producto(Id_Producto),
foreign key(Id_Emp) references Departamento(Id_Departamento));

/*______________________________________________________________________________________________________________________*/

/*Creacion de los Triggers*/
DELIMITER @
CREATE TRIGGER Tr_Insert_Cliente BEFORE INSERT ON Cliente FOR EACH ROW BEGIN INSERT INTO Cliente_historial
VALUES ( new.Nombre_Cli,new.Apellido_Cli, new.Direccion_Cli, new.Email_Cli, new.Password_Cli, new.Imagen_Cli, new.Cod_postal_Cli, new.Localidad_Cli, new.Telefono_Cli, curdate(),'Agregado');
END;
@ DELIMITER ;

DELIMITER @
CREATE TRIGGER Tr_Update_Cliente BEFORE UPDATE ON Cliente FOR EACH ROW BEGIN INSERT INTO Cliente_historial
VALUES (new.Nombre_Cli,new.Apellido_Cli, new.Direccion_Cli, new.Email_Cli, new.Imagen_Cli, new.Cod_postal_Cli, new.Localidad_Cli, new.Telefono_Cli, curdate(),'Modificado');
END;
@ DELIMITER ;

DELIMITER @
CREATE TRIGGER Tr_Delete_Cliente BEFORE DELETE ON Cliente FOR EACH ROW BEGIN INSERT INTO Cliente_historial
VALUES (old.Nombre_Cli, old.Apellido_Cli , old.Direccion_Cli, old.Email_Cli, old.Password_Cli, old.Cod_postal_Cli, old.Localidad_Cli, old.Telefono_Cli, curdate(), 'Eliminado');
END;
@ DELIMITER ;

insert into Cliente (Nombre_Cli, Apellido_Cli, Direccion_Cli, Email_Cli, Password_Cli, Imagen_Cli, Cod_postal_Cli, Localidad_Cli, Telefono_Cli)
values
('Elva','Ginon','Cll 33','ElvaG@gmail.com',MD5('Elvita123'),'imagen', 123,'Engativa',64573),
('Susana','Oria','CLL 19','Susana@gmail.com',SHA('Oria123'),'imagen',123,'Soacha',2321720),
('Manolo','Romero','Cll 332','Manolo@gmail.com',SHA1('Manolo2'),'imagen',123,'Soacha',74343720),
('Elvis','Cocho','Crr 23','Elvisito@gmail.com',AES_ENCRYPT('Elvisito123','llave'),'imagen',123,'Kennedy',74533);









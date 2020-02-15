create database Dimayor;
use Dimayor;

/*-------------TABLAS-----------------*/
create table Jugadores(
Cod_Jugador int(220)not null auto_increment,
Cod_Equipo varchar(4)not null,
Doc_Identidad varchar(20),
Nombre_Jugador text(25),
Fecha_Nac date,
Posicion_Jugador text(10),
Primary key(Cod_Jugador));

create table Equipos(
Cod_Equipo varchar(4)not null,
Nombre_Equipo varchar(20),
Nombre_Estadio varchar(20),
Espectadores int(10),
Año_Fundacion int(4),
Ciudad_Equipo varchar(20),
Primary key(Cod_Equipo));

create table Goles(
ID_Partido varchar(2)not null,
Tipo_Gol text(10),
Minuto_Gol varchar(5),
primary key(ID_Partido));

create table Partido(
Cod_Partido varchar(6)not null,
Fecha_Partido date,
Goles_Casa int(2),
Goles_Visitantes int(2),
Primary key(Cod_Partido));

create table Presidentes(
Cedula int(10)not null,
Nombre text(10),
Apellido text(10),
Fecha_Nacimiento date,
Equipo_President varchar(30),
Año_Elegido int(4),
Primary key(Cedula));

/*------------------------------------------*/


/*-------------INSERT VALUES JUGADORES-----------------*/

/*DATOS NACIONAL */
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","1010046823","Jose Fernando Cuadrado","1985-06-01","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","1929485762","Cristian Mafla","1993-01-15","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","2918437105","Gilberto García Olarte","1987-01-27","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","1298472634","Helibelton Palacios Zapata","1993-06-11","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","3827529485","Juan Pablo Ramirez","1997-11-26","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","2918457893","Pablo Ceppelini","1991-09-11","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","1298457842","Andrés Perea","2000-11-14","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","81928374905","Jeison Steven Lucumí Mina","1995-04-08","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","1928470982","Hernán Barcos","1984-04-11","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("AA01","1235124004","Felix Charrupi","2001-05-13","Delantero");

/*DATOS MILLONARIOS*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","307483406","Wuilker Fariñez","1998-02-15","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","142371696","Jair Palacios","1990-06-30","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","596373698","Felipe Román","1995-10-05","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","347144247","Felipe Banguero","1988-12-31","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","248515823","Santiago Montoya","1991-09-15","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","601931765","César Carrillo","1992-08-08","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","447559502","Oscar David Barreto","1993-04-28","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","360276452","Eliser Quiñones","1988-11-07","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","133766526","Carlos López","1994-08-01","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("BB01","658934225","Christian Huerfano","1998-03-12","Delantero");

/*DATOS AMERICA*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","891959329","Carlos Bejerano","1985-01-29","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","875634126","Marlon Torres","1996-04-17","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","283464659","Hector Quiñones","1992-03-17","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","150230241","Pedro Franco","1988-12-31","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","704372708","Luis Jiménez","1997-03-10","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","352740817","Carlos Sierra","1990-10-25","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","278662646","Gustavo Carvajal","2000-06-17","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","606415245","Jhon Quiñones","2000-05-25","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","553274054","Fernando Aristeguieta","1992-04-09","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("CC01","986835491","Misael Riascos","1991-03-29","Delantero");

/*DATOS JUNIOR*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","714364157","Jose Luis Chungua","1985-01-29","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","560017399","Rafael Perez","1996-04-17","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","875277477","Marlos Piedrahita","1992-03-17","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","513564647","Gabiel Fuentes","1988-12-31","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","630699374","Roger Torres","1997-03-10","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","146347741","Freddy Hinestroza","1990-10-25","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","605051241","Ivan Rivas","2000-06-17","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","937398089","Michael Rangel","2000-05-25","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","267218007","Fabian Sambueza","1992-04-09","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("DD01","234047176","Teófilo Gutiérrez","1991-03-29","Delantero");

/*DATOS CALI*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","547941721","Camilo Andrés Vargas","1989-03-09","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","341556932","Danny Alejandro Rosero ","1993-12-21","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","442335555","Eduar Hernán Caicedo","1995-04-23","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","112142511","Richard Stevens Rentería ","1996-02-19","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","791881773","Christian Hernando Rivera ","1996-01-14","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","140874878","Matías Julio Cabrera ","1986-05-16","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","984613832","Jimmy Andrés Congo","1998-02-28","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","281990273","César Andrés Amaya","1990-10-12","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","913258537","Feiver Alfonso Mercado ","1990-06-01","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("EE01","287965495","Juan Ignacio Dinenno ","1994-08-29","Delantero");

/*DATOS TOLIMA*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","177447164","Alvaro Montero","1989-03-09","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","535613517","Julian Quiñones","1989-11-05","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","863342623","Sergio Mosquera","1994-02-09","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","369968487","Juan Pablo Vargas","1995-06-06","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","398824939","Lary Vazques","1992-09-19","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","496009861","Carlos Renteria","1995-07-05","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","153921713","Carlos Robles","1992-05-16","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","977269100","Diego Valdes","1991-01-29","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","646379633","Jorge Ramos","1992-10-02","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("FF01","320113058","Luis Caballero ","1990-04-22","Delantero");

/*DATOS PASTO*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","127410773","Ernesto Hernandez","1985-07-26","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","880656046","Mauricio Ferney Casierra","1985-12-08","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","863480606","John Jairo Montaño","1984-04-17","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","235563626","Mairon Quiñones","1996-04-20","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","336491069","Michael Ortega","1991-04-06","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","582097443","Carlos Giraldo","1979-11-17","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","117950853","Luis Carlos Arias","1985-01-13","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","258618904","Jairo Molina","1993-04-28","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","883231152","Gaston Andres Javier","1986-06-27","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("GG01","348652383","Victor Aquino Romero","1985-1-26","Delantero");

/*DATOS SANTA FE*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","947239934","Robinzon Zapata","1978-09-30","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","359180296","Carlos Mario Arboleda","1986-06-08","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","819282326","Jose David Moya","1992-08-07","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","537543602","Carlos Henao","1988-12-03","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","667403141","Omar Sebastian Perez","1981-03-29","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","367029771","Juan Daniel Roa","1991-08-20","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","886859172","Luis Manuel Seijas","1986-06-30","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","553762219","Arley Rodrigues","1993-02-13","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","738368022","Carmelo Valencia","1984-07-13","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("HH01","235839400","Brayan Perea","1993-02-25","Delantero");

/*DATOS MEDELLIN*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","466464967","Andres Mosquera","1991-09-10","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","965154982","Brayan Carabali","1999-02-25","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","162250290","Hernan Pertuz","1989-03-30","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","117988537","Jesus Murillo","1994-02-18","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","727685895","Jonathan Marulanda","1995-11-21","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","666346152","Juan Diaz","2001-05-20","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","587088590","Wilson Lopez","1997-03-18","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","624238704","Leonado Castro","1992-06-14","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","738368022","William Palacios","1994-07-29","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("II01","145529301","Diego Herazo","1996-04-14","Delantero");

/*DATOS ONCE CALDAS*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","694756722","Sergio Roman","1995-05-21","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","160122021","Jorge Cardona","1999-02-23","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","663025983","Oscar Zapata","1999-05-28","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","216664160","Jose Luis Moreno","1996-10-22","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","974238813","Alejandro Garcia","2001-02-28","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","862794437","Juan Diaz","2001-05-20","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","657843198","Sebastian Guzmán","1997-05-26","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","541699951","John Garcia","1999-02-01","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","563786175","Juan Salcedo","1993-05-27","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("JJ01","257041659","Juan Carlos Blanco","1992-04-06","Delantero");

/*DATOS UNION MAGDALENA*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","239874254","Cesar Giraldo","1989-09-24","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","787568827","Dixon Renteria","1995-09-24","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","552082180","Julio Murillo","1991-01-03","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","916386105","Andres Rodriguez","1995-06-11","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","950856573","Jahi Scott","1995-05-06","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","519744997","Abel Aguilar","1985-01-06","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","318870734","Fernando Battiste","1984-03-11","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","119570535","Ruyery Blanco","1998-12-07","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","154563670","Ricardo Marquez","1997-11-09","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("KK01","384037197","Uvaldo Luna","1993-12-21","Delantero");

/*DATOS EQUIDAD*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","660962903","Kevin Piedrahita","1991-06-18","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","767755899","Andres Correa","1994-01-29","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","710022674","Francisco Najera","1983-07-25","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","938328585","John Edison Garcia","1989-06-04","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","755210476","Stalin Motta","1984-03-28","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","334594293","Juan Mahecha","1987-07-22","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","570462962","Fabian Andres Vargas","1980-04-17","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","308226938","Arbey Mosquera","1988-01-20","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","763130316","Cristian Rojas","1997-05-19","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("LL01","180659621","Carlos Pealta","1990-02-14","Delantero");

/*DATOS BUCARAMANGA*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","121193835","Luis Ojeda","1990-03-21","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","924149803","Alex Diaz","1989-01-12","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","432187170","Harold Gomez","1992-04-21","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","755952601","Lewis Ochoa","1984-09-04","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","756505249","Jose Jaimes","1998-04-10","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","608141640","Juan Jimenez","1994-03-12","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","950925714","Gabiel Gomez","1984-05-29","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","203370485","Felipe Barragan","1999-02-12","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","783522563","Jose Cortes","1994-09-08","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("MM01","493667289","Andres Ariza","1999-01-07","Delantero");

/*DATOS PATRIOTAS*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","959032670","Alvaro Villete","1991-07-01","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","244160013","Paul Rubiano","1995-01-20","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","698403580","Miller Mosquera","1992-07-16","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","144386017","Jerson Malagon","1993-06-26","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","954390091","Julian Buitrago","1993-01-07","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","676252492","Cristian Barrios","1998-05-19","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","268046732","Jose Guzman","1998-02-15","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","217662535","Brayan Fernandez","1992-01-25","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","594333893","Juan David Castañeda","1995-01-26","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("NN01","667189280","Mario Alvarez","1994-06-06","Delantero");

/*DATOS ENVIGADO*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","807065425","Jefferson Martínez","1993-08-16","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","692907612","Santiago Noreña","1998-06-11","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","969094353","Jesus Matinez","1994-05-25","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","361334810","Juan Ochoa","1996-07-16","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","200332419","Brayan Lucumi","1994-02-12","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","387803745","Dilan Vahos","1999-01-03","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","115374417","Edison Lopez","1999-01-20","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","923978474","Carlos Rojas","1998-05-28","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","862281645","Jeronimo Buitrica","1999-09-30","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("TT01","766607991","Wilfredo de la Rosa","1993-02-07","Delantero");

/*DATOS AGUILAS DORADAS*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","551543284","Juan Valencia","1993-03-19","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","816060426","Alvaro Angulo","1997-03-06","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","176104060","Jhonny Acosta","1983-07-21","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","334327441","Juan Camilo Perez","1985-10-26","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","579636479","Luis Mosquera","1989-05-25","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","175382521","Harold Riveras","1993-03-19","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","990041775","Calos Sinisterra","1991-08-04","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","520102292","Jacobo Escobar","1998-08-24","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","876870784","Jhon Palacios","1995-05-17","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("OO01","320284157","Jesus Rivas","1997-04-06","Delantero");

/*DATOS JAGUARES*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","992810119","Roque Cardozo","1997-08-16","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","786454682","Jahn Valencia","1997-11-27","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","324478038","Leonado Escorcia","1986-08-09","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","984355715","Jorge Lozano","1991-01-14","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","667819011","Carlos Sepulveda","1997-05-03","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","540558389","Braison Cardona","1998-03-09","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","277786887","Jhon Mosquera","1989-04-15","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","663197246","David Cortes","1992-05-01","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","116550650","Olmes Garcia","1992-10-21","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("PP01","211250275","Antony Otero","1996-04-06","Delantero");

/*DATOS HUILA*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","611535323","Aldair Quintana","1994-07-11","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","341780793","Luis Cardoza","1984-12-19","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","600348526","Daniel Duarte","1985-05-24","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","699006105","Victor Moreno","1994-10-23","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","988821164","Jhonny Paredes","1997-01-23","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","757928063","Julian Quintero","1996-04-29","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","586651534","Kevin Salazar Gomez","1999-04-16","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","613770855","Bayon Garcés","1993-05-30","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","364189996","Cristian Cangá","1993-02-23","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("QQ01","593129700","Deyman Cortes","2000-07-29","Delantero");

/*DATOS ALIANZA PETROLERA*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","281871923","Ricardo Jerez","1986-02-04","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","911039850","David Valencia","1991-05-31","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","975536087","Luciano Ospina","1991-02-18","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","416288037","Jeisson Palacios","1994-03-20","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","922486636","Freddy Flores","1993-02-14","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","498004651","Juan Mancilla","1998-02-18","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","641880930","Harrison Henao","1987-02-19","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","182170005","Cesar Arias","1988-04-02","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","927965181","Jose Correa","1992-07-20","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("RR01","390612078","Jorge Suarez","1998-05-14","Delantero");

/*DATOS ITAGUI*/
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","701894418","Cristian Arroyave","1995-07-05","Arquero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","147564344","John Palacios","1999-10-02","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","303406299","David Alvarez","1992-10-13","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","936672698","Carlos Gallego","1989-03-09","Defensa");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","346136158","Santiago Arroyave","1999-07-08","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","491820928","Duvier Mosquera","1998-12-21","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","723369803","Duvan Gonzales","1996-09-09","Volante");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","774844593","Nelson Villamir","1997-03-20","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","756159122","Fanklin Navarro","1999-04-29","Delantero");
insert into Jugadores(Cod_Equipo,Doc_identidad,Nombre_jugador,Fecha_Nac,Posicion_Jugador)
values("SS01","256065573","Felipe Gomez","1999-10-11","Delantero");
/*--------------------------------------------------------*/


/*-------------INSERT VALUES EQUIPOS-----------------*/
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("AA01","Atlético Nacional","Atanasio Girardot","89806","1947","Medellin");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("BB01","Millonarios FC","Nemesio Camacho El Campín","53893","1932","Bogotá");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("CC01","America de Cali","Olímpico Pascual Guerrero","17471","1918","Cali");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("DD01","Junior de Barranquilla","Metropolitano Roberto Meléndez","13809","1924","Barranquilla");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("EE01","Deportivo Cali","Deportivo Cali","43581","1912","Cali");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("FF01","Club Deportes Tolima","Manuel Murillo Toro","43581","1954","Ibague");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("GG01","Deportivo Pasto","Estadio Municipal De Ipiales","78689","1949","Pasto");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("HH01","Independiente Santa Fe","Nemesio Camacho El Campin","85719","1941","Bogotá");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("II01","Independiente Medellin","Atanasio Girardot","75072","1913","Medellin");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("JJ01","Once Caldas","Palogrande","39351","1947","Manizales");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("KK01","Union Magdalena","Estadio Sierra Nevada","79829","1953","Santa Marta");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("LL01","Club Deportivo La Equidad","Metropolitano de Techo","19427","1982","Bogotá");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("MM01","Atletico Bucaramanga","Estadio Alfonso López","87809","1948","Bucaramanga");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("NN01","Patriotas Futbol Club","La Independencia","82191","2003","Tunja");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("TT01","Envigado Futbol Club","Polideportivo Sur","47876","1989","Envigado");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("OO01","Aguilas Doradas Rionegro","Estadio Alberto Grisales","72982","2008","Rio Negro");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("PP01","Jaguares Futbol Club","Estadio Jaraguay","62655","2012","Monteria");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("QQ01","Atletico Huila","Guillermo Plazas Alcid","26431","1990","Neiva");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("RR01","Alianza Petrolera","Daniel Villa Zapata","41173","1991","Barancabermeja");
insert into Equipos(Cod_Equipo, Nombre_Equipo, Nombre_Estadio, Espectadores, Año_Fundacion, Ciudad_Equipo)
values("SS01","Itagüí Leones","	Metropolitano Ciudad de Itagüí","53741","1957","Itagüi");
/*----------------------------------------------------*/


/*-------------INSERT VALUES PARTIDOS-----------------*/
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("A1","2019/03/1","2","1");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("B1","2019/03/5","0","1");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("C1","2019/03/20","1","0");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("D1","2019/04/1","0","0");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("E1","2019/04/05","2","2");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("F1","2019/04/15","1","1");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("G1","2019/04/20","2","0");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("H1","2019/04/20","2","0");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("I1","2019/05/03","2","2");
insert into Partido(Cod_Partido, Fecha_Partido, Goles_Casa, Goles_Visitantes)
values("J1","2019/05/10","0","1");
/*----------------------------------------------------*/


/*-------------INSERT VALUES GOLES-----------------*/
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("A1","Tiro Libre","12:30");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("B1","Tiro Penal","30:30");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("C1","Tiro Libre","70:20");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("D1","Tiro Libre","15:42");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("E1","Tiro Cabeza","36:20");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("F1","Tiro Libre","60:20");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("G1","Tiro Penal","05:20");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("H1","Tiro Penal","30:30");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("I1","Tiro Libre","45:20");
insert into Goles(ID_Partido, Tipo_Gol, Minuto_Gol)
values("J1","Tiro Cabeza","78:33");

/*-------------------------------------------------*/

/*-------------INSERT VALUES PRESIDENTES-----------------*/
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("437151589","Paulo","Autuori","1956/08/25","Atlético Nacional","2018");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("554493467","Jorge Luis","Pinto","1952/12/16","Millonarios FC","1984");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("860484498","Jersson","Gonzáles","1975/01/16","América de Cali","2018");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("660732282","Luis Fernando","Suárez","1959/12/23","Junior de Barranquilla","1989");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("240513845","Lucas Andrés","Pusineri Bignone","1976/07/16","Deportivo Cali","2018");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("181104990","Alberto","Gamero","1964/02/03","Club Deportes Tolima","2003");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("917078101","Alexis","Garcia","1960/07/21","Deportivo Pasto","1999");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("304394437","Gerardo","Bedoya","1975/11/26","Independiente Santa Fe","2019");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("510735103","Ricardo","Calle","1980/02/18","Independeiente Medellin","1998");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("839797739","Hubert","Bodhert","1972/01/17","Once Caldas","2004");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("464976475","Harold","Rivera","1970/09/23","Union Magdalena","2008");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("317571058","Humberto","Sierra","1960/07/21","Club Deportivo La Equidad","2993");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("401022991","Carlod","Giraldo","1979/11/17","Atletico Bucaramanga","1998");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("393454721","Diego Andrés","Corredor","1981/06/30","Patriotas Futbol Club","2016");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("794225138","Ismael","Rescalvo","1982/03/02","Envigado Futbol Club","2013");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("950951471","Hugo","Almeida","1984/05/23","Aguilas Doradas","2003");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("773009670","Upegui ","Upegui","1969/09/20","Jaguares Futbol Club","2004");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("418535534","Luis Fernando","Herera","1962/06/16","Atletico Huila","1997");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("646299287","Cesar","Torres Ramírez","1976/09/23","Alianza Petrolera","2007");
insert into Presidentes(Cedula, Nombre, Apellido, Fecha_Nacimiento, Equipo_President, Año_Elegido)
values("385552867","Luis Amaranto","Perea","1979/01/30","Itagüí Leones","2009");


/*------------------------------------------------------*/

/*-----------------COLSULTAS-----------------*/

/*PRIMERA CONSULTA*/
select*from jugadores;

/*SEGUNDA CONSULTA*/
select*from jugadores where jugadores.Fecha_Nac <="1999/01/01" order by Fecha_Nac desc;

/*TERCERA CONSULTA*/
select*from jugadores;

/*CUARTA CONSULTA*/
select*from jugadores where Posicion_Jugador="Delantero";

/*QUINTA CONSULTA*/


/*SEXTA CONSULTA*/


/*SEPTIMA CONSULTA*/
select Nombre, Equipo_President from Presidentes; 

/*OCTAVA CONSULTA*/
select Nombre_Equipo, Ciudad_Equipo, Nombre_Estadio from Equipos;

/*COLSULTA LIBRE*/
select Equipos.Nombre_Equipo, Presidentes.Nombre from Equipos, Presidentes where Equipos.Nombre_Equipo = Presidentes.Equipo_President;
/*------------------------------------------*/
CREATE DATABASE DBVENTAS
USE DBVENTAS

CREATE TABLE CATEGORIA (
    IdCategoria INT identity(1,1) primary key ,
    Descripcion VARCHAR(50)
);

CREATE TABLE USUARIO (
    IdUsuario INT identity(1,1) primary key,
	nombre VARCHAR(50),
    cedula int
);

CREATE TABLE PRODUCTO (
    IdProducto INT identity(1,1) primary key,
	FechaEvento date ,
    LugarEvento VARCHAR(50) ,
	DescripcionEvento VARCHAR(50),
    Precio decimal(10,2),
	CodCategoria int
    CONSTRAINT FK_IDCATEGORIA FOREIGN KEY (CodCategoria) REFERENCES CATEGORIA(IdCategoria)
);

CREATE TABLE USUARIO_PRODUCTO (
    IdUsuarioProducto INT identity(1,1) primary key,
	CodUsuario int,
	CodProducto int	
	CONSTRAINT FK_IDUSUARIO FOREIGN KEY (CodUsuario) REFERENCES USUARIO(IdUsuario),
	CONSTRAINT FK_IDPRODUCTO FOREIGN KEY (CodProducto) REFERENCES PRODUCTO(IdProducto)
);

insert into CATEGORIA (Descripcion) values ('Deportivo'),('Cultural');
insert into USUARIO (nombre,cedula) values ('ALEX',11111),('DIEGO',22222);
insert into PRODUCTO (FechaEvento,LugarEvento,DescripcionEvento,Precio,CodCategoria) 
values ('07/03/2024','Estadio Gonzalo Pozo','Fecha 01 Camp. Ecuatoriano',5.00,1),
('08/03/2024','Casa de la Cultura','Exposición de arte',20.00,2),
('09/03/2024','Monumental','Liga pro',30.00,1);

insert into USUARIO_PRODUCTO (CodUsuario,CodProducto) values (1,1);

select * from CATEGORIA;
select * from PRODUCTO;
select * from USUARIO;
select * from USUARIO_PRODUCTO;

create Table bibliotecario
( id_bibliotecario int not null primary key ,
  nombre varchar (50) not null,
  apellido varchar (50) not null,
  dni int);
  
create table categoria_libros
(id_categoria_libro int not null primary key ,
nombre_categoria varchar (50) not null);
  
create table categorias_usuarios
(id_categoria_usuario int not null primary key ,
nombre varchar (50) not null);

create table libro
(id_libro int not null primary key ,
nombre varchar (50) not null,
autor varchar (50) NOT NULL,
id_categoria_libro INT NOT NULL,
estado VARCHAR(45) NOT NULL,
CONSTRAINT fk_categoria_libro FOREIGN KEY (id_categoria_libro) REFERENCES categorias_Libros(id_categoria_libro)
);

CREATE TABLE prestamo 
(id_prestamo INT NOT NULL PRIMARY KEY,
id_libro INT NOT NULL,
id_bibliotecario INT NOT NULL,
id_usuario INT NOT NULL,
estado VARCHAR(45) NOT NULL,
fecha_prestamo date,
fecha_devolucion date,
CONSTRAINT fk_prestamo_libro FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
CONSTRAINT fk_prestamo_bibliotecario FOREIGN KEY (id_bibliotecario) REFERENCES bibliotecario(id_bibliotecario),
CONSTRAINT fk_prestamo_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

create table usuario
(id_usuario int not null primary key,
nombre varchar (50) not null,
apellido varchar (50) not null,
dni int,
telefono int,
domicilio varchar (50),
id_categoriausuario int not null,
CONSTRAINT fk_categoriasusuarios FOREIGN KEY (id_categoria_usuario) 
REFERENCES categoriasusuarios(id_categoria_usuario));

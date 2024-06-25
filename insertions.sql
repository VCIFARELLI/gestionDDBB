use gestionddbb;
select*from bibliotecario;
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (1, 'Juan', 'González', 12345678);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (2, 'María', 'López', 87654321);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (3, 'Pedro', 'Martínez', 23456789);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (4, 'Ana', 'Rodríguez', 98765432);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (5, 'Carlos', 'Pérez', 34567890);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (6, 'Laura', 'Sánchez', 45678901);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (7, 'José', 'García', 56789012);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (8, 'Sofía', 'Fernández', 67890123);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (9, 'Miguel', 'Ruiz', 78901234);
INSERT INTO bibliotecario (id_bibliotecario, nombre, apellido, dni) VALUES (10, 'Elena', 'Díaz', 89012345);

select*from categoria_libros;
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (1, 'Novela');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (2, 'Cuento');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (3, 'Clásico');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (4, 'Historia');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (5, 'Ciencia Ficción');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (6, 'Fantasía');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (7, 'Poesía');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (8, 'Teatro');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (9, 'Biografía');
INSERT INTO categoria_Libros (id_categoria_libro, nombre_categoria) VALUES (10, 'Ensayo');

select*from categorias_usuarios;
INSERT INTO categorias_usuarios (id_categoria_usuario, nombre) VALUES (1, 'Estudiante');
INSERT INTO categorias_usuarios (id_categoria_usuario, nombre) VALUES (2, 'Socio');
INSERT INTO categorias_usuarios (id_categoria_usuario, nombre) VALUES (3, 'Público en General');

select*from libro;
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (1, 'Cien años de soledad', 'Gabriel García Márquez', 1, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (2, 'El principito', 'Antoine de Saint-Exupéry', 2, 'Prestado');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (3, 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 1, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (4, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 3, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (5, '1984', 'George Orwell', 2, 'Prestado');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (6, 'Orgullo y prejuicio', 'Jane Austen', 3, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (7, 'Rayuela', 'Julio Cortázar', 1, 'Prestado');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (8, 'La sombra del viento', 'Carlos Ruiz Zafón', 1, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (9, 'Crónica de una muerte anunciada', 'Gabriel García Márquez', 1, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (10, 'La casa de los espíritus', 'Isabel Allende', 3, 'Prestado');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (11, 'El Aleph', 'Jorge Luis Borges', 1, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (12, 'La insoportable levedad del ser', 'Milan Kundera', 2, 'Disponible'); 
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUES (13, 'Siddhartha', 'Hermann Hesse', 3, 'Disponible');
INSERT INTO libro (id_libro, nombre, autor, id_categoria_libro, estado) VALUE  (14, 'Los detectives salvajes', 'Roberto Bolaño', 1, 'Disponible');

select*from usuario;
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (1, 'Luis', 'Pérez', 11111111, 1122334455, 'Av. Libertador 123', 2);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (2, 'Ana', 'Gómez', 22222222, 9988776655, 'Calle 10 de Octubre 456', 1);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (3, 'Jorge', 'Fernández', 33333333, 3344556677, 'Av. San Martín 789', 2);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (4, 'María', 'López', 44444444, 7766554433, 'Calle Mayor 567', 3);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (5, 'Carolina', 'García', 55555555, 5566778899, 'Av. Rivadavia 890', 1);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (6, 'Pablo', 'Martínez', 66666666, 3344667788, 'Calle Primera 234', 2);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (7, 'Lucía', 'González', 77777777, 9900112233, 'Av. Bolívar 901', 3);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (8, 'Diego', 'Díaz', 88888888, 1122334455, 'Calle Belgrano 345', 1);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (9, 'Sofía', 'Ruiz', 99999999, 6677889900, 'Av. Independencia 678', 2);
INSERT INTO usuario (id_usuario, nombre, apellido, dni, telefono, domicilio, id_categoria_usuario) VALUES (10, 'Mateo', 'Sánchez', 10101010, 3344556677, 'Calle Sarmiento 1234', 3);

select*from prestamo;
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (1, 2, 3, 1, 'Prestado', '2024-01-01', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (2, 5, 6, 2, 'Prestado', '2024-01-02', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (3, 7, 1, 3, 'Prestado', '2024-01-03', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (4, 10, 4, 4, 'Prestado', '2024-01-04', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (5, 3, 8, 5, 'Prestado', '2024-01-05', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (6, 1, 10, 6, 'Prestado', '2024-01-06', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (7, 4, 2, 7, 'Prestado', '2024-01-07', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (8, 8, 9, 8, 'Prestado', '2024-01-08', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (9, 6, 5, 9, 'Prestado', '2024-01-09', null);
INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo, fecha_devolucion) VALUES (10, 9, 7, 10, 'Prestado', '2024-01-10', null);






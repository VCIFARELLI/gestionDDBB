/*Creacion de Procedure*/

drop procedure registrar_prestamo;

DELIMITER $$

CREATE PROCEDURE registrar_prestamo(
    IN p_id_libro INT,
    IN p_id_usuario INT,
    IN p_fecha_prestamo DATE,
    in p_id_bibliotecario int
)
BEGIN
    DECLARE v_estado VARCHAR(45);
    DECLARE v_id_prestamo INT; 
    SELECT estado INTO v_estado
    FROM prestamo
    WHERE id_libro = p_id_libro
      AND estado = 'Prestado';

    IF v_estado IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El libro ya está prestado.';
    ELSE
        SELECT COALESCE(MAX(id_prestamo), 0) + 1 INTO v_id_prestamo FROM prestamo;
        INSERT INTO prestamo (id_prestamo, id_libro, id_bibliotecario, id_usuario, estado, fecha_prestamo)
        VALUES (v_id_prestamo, p_id_libro, p_id_bibliotecario, p_id_usuario, 'Prestado', p_fecha_prestamo);
    END IF;
END$$
DELIMITER ;

call registrar_prestamo(11, 2 , '2024-06-21', 1);

SELECT * FROM information_schema.ROUTINES WHERE ROUTINE_TYPE='PROCEDURE' AND ROUTINE_SCHEMA='gestionddbb';

/*Creacion de Vistas*/

CREATE VIEW vista_prestamos_actuales AS
SELECT
    l.nombre AS nombre_libro,
    u.nombre AS nombre_usuario,
    p.fecha_prestamo
FROM
    prestamo p
    JOIN libro l ON p.id_libro = l.id_libro
    JOIN usuario u ON p.id_usuario = u.id_usuario
WHERE
    p.estado = 'prestado';
  
  SELECT * FROM information_schema.VIEWS WHERE TABLE_SCHEMA = 'gestionddbb';id_categoria_usuarioid_categoria_usuarioid_categoria_usuario
  
    /*Creacion de Triggers*/
  
  DELIMITER $$
CREATE TRIGGER actualizar_fecha_devolucion
BEFORE UPDATE ON prestamo
FOR EACH ROW
BEGIN
    IF NEW.estado = 'Devuelto' AND OLD.estado <> 'Devuelto' THEN
        SET NEW.fecha_devolucion = CURDATE();
    END IF;
END$$

DELIMITER ;

SELECT * FROM information_schema.TRIGGERS WHERE TRIGGER_SCHEMA = 'gestionddbb';

/*Creacion de Transacciones*/

CREATE TABLE AuditoriaPrestamos (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    id_prestamo INT,
    accion VARCHAR(50),
    fecha DATETIME
);

DELIMITER //

CREATE PROCEDURE registrar_prestamo_con_transaccion(
    IN p_id_libro INT,
    IN p_id_usuario INT,
    IN p_fecha_prestamo DATE
)
BEGIN
    DECLARE libro_prestado INT;
    DECLARE new_prestamo_id INT;
    
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;
        START TRANSACTION;

    SELECT COUNT(*) INTO libro_prestado
    FROM prestamo
    WHERE id_libro = p_id_libro AND estado = 'prestado';

    IF libro_prestado = 0 THEN

        INSERT INTO prestamo (id_libro, id_usuario, estado, fecha_prestamo)
        VALUES (p_id_libro, p_id_usuario, 'prestado', p_fecha_prestamo);
        
        SET new_prestamo_id = LAST_INSERT_ID();
        
        UPDATE libro
        SET estado = 'prestado'
        WHERE id_libro = p_id_libro;

        INSERT INTO AuditoriaPrestamos (id_prestamo, accion, fecha)
        VALUES (new_prestamo_id, 'Registro de préstamo', NOW());
        
        COMMIT;
    ELSE
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El libro ya está prestado.';
    END IF;
END //

DELIMITER ;



    
    





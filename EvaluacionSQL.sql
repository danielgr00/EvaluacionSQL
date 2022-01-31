CREATE TABLE `evaluacion_schema`.`Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idUsuarios`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);

CREATE TABLE `evaluacion_schema`.`Notas` (
  `Id notas` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `fecha_creacion` DATETIME NOT NULL,
  `fecha_modificacion` DATETIME NOT NULL,
  `descripcion` TEXT NULL,
  PRIMARY KEY (`Id notas`),
  CONSTRAINT `fk_usuarios_notas`
    FOREIGN KEY (`Id notas`)
    REFERENCES `evaluacion_schema`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `evaluacion_schema`.`Categorias/Notas` (
  `id_Categorias/Notas` INT NOT NULL AUTO_INCREMENT,
  `notas_id` INT NOT NULL,
  `categorias_id` INT NOT NULL,
  PRIMARY KEY (`id_Categorias/Notas`),
  INDEX `id_notas_cat/not_idx` (`notas_id` ASC) VISIBLE,
  CONSTRAINT `id_notas_cat/not`
    FOREIGN KEY (`notas_id`)
    REFERENCES `evaluacion_schema`.`Notas` (`Id notas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `evaluacion_schema`.`Categorias` (
  `idCategorias` INT NOT NULL,
  `nombreCategoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategorias`),
  UNIQUE INDEX `nombreCategoria_UNIQUE` (`nombreCategoria` ASC) VISIBLE);
  
  ALTER TABLE `evaluacion_schema`.`Categorias/Notas` 
ADD INDEX `id_cat/not_cat_idx` (`categorias_id` ASC) VISIBLE;
;
ALTER TABLE `evaluacion_schema`.`Categorias/Notas` 
ADD CONSTRAINT `id_cat/not_cat`
  FOREIGN KEY (`categorias_id`)
  REFERENCES `evaluacion_schema`.`Categorias` (`idCategorias`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

INSERT INTO usuarios VALUES
(DEFAULT,'Daniel', 'dany.garza00@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'Roger', 'Roger@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'ANA', 'ana@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'Juan', 'juan@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'Paula', 'paula@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT,'Gabriela', 'Gabri@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'Alex', 'Alex@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'Bob', 'Bob@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'Ted', 'Ted@gmail.com');

INSERT INTO usuarios VALUES
(DEFAULT, 'Tom', 'Tom@gmail.com');


-- schema.sql (generated)
-- DDL extracted from bd_sanear.sql

CREATE TABLE items_ejecutados (
    items FLOAT NOT NULL,
    descripcion VARCHAR(500),
    unidad_medida VARCHAR(11),
    medida1 INT(11),
    medida2 INT(11),
    medida3 INT(11),
    total_medidas INT(11),
    valor_unitario FLOAT,
    subtotal FLOAT,
    PRIMARY KEY (items)
) ENGINE=InnoDB;
CREATE TABLE `bd_sanear`.`recursos` (
  `idrecursos` INT NOT NULL,
  `acta_no` VARCHAR(45) NULL,
  `municipio` VARCHAR(45) NULL,
  `servicio` VARCHAR(45) NULL,
  `aplicativo` VARCHAR(100) NULL,
  `efectividad` VARCHAR(45) NULL,
  `trabajo` VARCHAR(60) NULL,
  `motivo` VARCHAR(70) NULL,
  `causa_evento` VARCHAR(45) NULL,
  PRIMARY KEY (`idrecursos`));
CREATE TABLE `bd_sanear`.`registros` (
  `idregistros` INT NOT NULL,
  `trabajo` VARCHAR(150) NULL,
  `motivo` VARCHAR(150) NULL,
  `causa_evento` VARCHAR(150) NULL,
  `acta_no` INT NULL,
  `no_solicitud` INT NULL,
  `fecha_inicio` DATE NULL,
  `fecha_fin` DATE NULL,
  `direccion` VARCHAR(90) NULL,
  `municipio` VARCHAR(45) NULL,
  `aplicativo` VARCHAR(120) NULL,
  `servicio` VARCHAR(250) NULL,
  `efectividad` VARCHAR(45) NULL,
  `item` VARCHAR(50) NULL,
  `descripcion` VARCHAR(250) NULL,
  `cantidad` DOUBLE NULL,
  `subtotal` DOUBLE NULL,
  `lista_items` VARCHAR(450) NULL,
  `total` DOUBLE NULL,
  `observaciones` VARCHAR(250) NULL,
  `item_` VARCHAR(50) NULL,
  `descripcion_` VARCHAR(250) NULL,
  `unidad` VARCHAR(45) NULL,
  `medida1` DOUBLE NULL,
  `medida2` DOUBLE NULL,
  `medida3` DOUBLE NULL,
  `total_medida` DOUBLE NULL,
  PRIMARY KEY (`idregistros`));
CREATE TABLE `bd_sanear`.`encargados` (
  `idencargados` INT NOT NULL,
  `nombre` VARCHAR(60) NULL,
  `cedula` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`idencargados`));
ALTER TABLE `bd_sanear`.`recursos` 
ADD COLUMN `accion_pendiente` VARCHAR(45) NULL AFTER `causa_evento`,
ADD COLUMN `elemento_intervenido` VARCHAR(45) NULL AFTER `accion_pendiente`,
ADD COLUMN `auxiliares_epm` VARCHAR(45) NULL AFTER `elemento_intervenido`;
ALTER TABLE encargados 
ADD COLUMN contrasena VARCHAR(255);

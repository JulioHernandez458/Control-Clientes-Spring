CREATE SCHEMA `pruebadb` ;

USE pruebadb;

CREATE TABLE `pruebadb`.`persona` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  PRIMARY KEY (`id_persona`),
  UNIQUE KEY `email_UNIQUE` (`email`)
);


CREATE TABLE `pruebadb`.`usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(128) NULL,
  PRIMARY KEY (`id_usuario`));
  
  
  CREATE TABLE `pruebadb`.`rol` (
  `id_rol` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `id_usuario` INT NULL,
  PRIMARY KEY (`id_rol`),
  INDEX `fk_rol_usuario_idx` (`id_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_rol_usuario`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `pruebadb`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    -- user:admin password: 1234
    INSERT INTO `pruebadb`.`usuario` (`username`, `password`) VALUES ('admin', '$2a$10$1kPqcX/kz30LfN1GuCmZlOOzd7Lm8H4XW/WD05w39ssJ0Rq5OcAA6');
    -- user: user1 password: 123
    INSERT INTO `pruebadb`.`usuario` (`username`, `password`) VALUES ('user1', '$2a$10$lSvpEKeaReHQvkkw3TfP..DJIcwi.YxJLp30106ge0aBnVgMJrHry');
    
    INSERT INTO `pruebadb`.`rol` (`nombre`, `id_usuario`) VALUES ('ROLE_ADMIN', '1');
    INSERT INTO `pruebadb`.`rol` (`nombre`, `id_usuario`) VALUES ('ROLE_USER', '1');
    INSERT INTO `pruebadb`.`rol` (`nombre`, `id_usuario`) VALUES ('ROLE_USER', '2');


    select * from pruebadb.persona;
  
  

SELECT *
FROM products 


--* creation de la base de donnees
CREATE DATABASE factory;
SHOW DATABASES;

-- -----------------------------------------------------
-- Table `factory`.`campany`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `factory`.`campany` (
  `id_com` INT NOT NULL AUTO_INCREMENT,
  `name_com` VARCHAR(45) NULL,
  PRIMARY KEY (`id_com`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `factory`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `factory`.`products` (
  `id_prod` INT NOT NULL AUTO_INCREMENT,
  `name_prod` VARCHAR(45) NULL,
  `company_id` INT NULL,
  `price_id` INT NULL,
  PRIMARY KEY (`id_prod`),
  INDEX `fk_products_campany_idx` (`company_id` ASC) VISIBLE)
ENGINE = InnoDB;
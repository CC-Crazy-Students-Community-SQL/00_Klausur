-- Aufgabe 1
SHOW TABLES;

-- Aufgabe 2
CREATE DATABASE IF NOT EXISTS `mydb`;

-- Aufgabe -- Aufgabe 4
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `user_mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `place` VARCHAR(45) NOT NULL,
  `likes` INT NOT NULL,
  PRIMARY KEY (`id`, `likes`),
  INDEX `fk_orders_customuers_idx` (`likes` ASC),
  CONSTRAINT `fk_orders_customuers`
    FOREIGN KEY (`likes`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Aufgabe 6
CREATE TABLE IF NOT EXISTS `mydb`.`productlist` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,2) NOT NULL,
  `in_stock` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

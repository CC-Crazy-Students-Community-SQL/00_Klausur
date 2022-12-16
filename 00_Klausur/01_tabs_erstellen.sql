-- Aufgabe 4
CREATE TABLE IF NOT EXISTS `mydb`.`customuers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sct_name` VARCHAR(45) NOT NULL,
  `cst_firstname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `amount` DECIMAL(6,2) NOT NULL,
  `customuers_id` INT NOT NULL,
  PRIMARY KEY (`id`, `customuers_id`),
  INDEX `fk_orders_customuers_idx` (`customuers_id` ASC),
  CONSTRAINT `fk_orders_customuers`
    FOREIGN KEY (`customuers_id`)
    REFERENCES `mydb`.`customuers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Aufgabe 6
CREATE TABLE IF NOT EXISTS `mydb`.`adressbook` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `vorname` VARCHAR(45) NOT NULL,
  `plz` INT NOT NULL,
  `ort` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;
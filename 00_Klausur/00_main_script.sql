CREATE DATABASE IF NOT EXISTS `mydb`;
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

CREATE TABLE IF NOT EXISTS `mydb`.`productlist` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `price` DECIMAL(6,2) NOT NULL,
  `in_stock` INT NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;

TRUNCATE TABLE `mydb`.`productlist`;
INSERT INTO `mydb`.`productlist` 
	(`product`, `category`, `price`, `in_stock`) 
VALUES 
	("Dell XP1", "Computer", 520.00, 200),
	("AKOYA ZD217", "Computer", 430.00, 10),
	("WD 1020", "External Memory", 115.00, 40),
	("CISCO 2050T", "Network Components", 245.00, 10)
;

SELECT 
	product AS "Ware",
	price AS "Preis"
FROM 
	`mydb`.`productlist`
WHERE
	category LIKE "Computer"
ORDER BY 
	price DESC
;
-- Aufgabe 6
TRUNCATE TABLE `mydb`.`productlist`;
INSERT INTO `mydb`.`productlist` 
	(`product`, `category`, `price`, `in_stock`) 
VALUES 
	("Dell XP1", "Computer", 520.00, 200),
	("AKOYA ZD217", "Computer", 430.00, 10),
	("WD 1020", "External Memory", 115.00, 40),
	("CISCO 2050T", "Network Components", 245.00, 10)
;


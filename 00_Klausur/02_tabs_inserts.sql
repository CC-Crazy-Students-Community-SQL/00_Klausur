-- Aufgabe 6
TRUNCATE TABLE `mydb`.`adressbook`;
INSERT INTO `mydb`.`adressbook` 
	(`ID`, `name`, `vorname`, `plz`, `ort`) 
VALUES 
	(default, "Müller", "Peter", 12991, "Berlin"),
	(default, "Ay", "Yildiz", 63325, "Langen"),
	(default, "Sommer", "Petra", 70137, "Stuttgart")
;

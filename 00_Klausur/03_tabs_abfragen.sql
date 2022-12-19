DESCRIBE `mydb`.`adressbook`;

SELECT * FROM `mydb`.`adressbook`;

SELECT 
	name,
    vorname
FROM 
	`mydb`.`adressbook`
WHERE
	vorname LIKE "Pet%"
;

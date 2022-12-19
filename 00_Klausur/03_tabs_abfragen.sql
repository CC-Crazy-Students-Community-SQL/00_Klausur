DESCRIBE `mydb`.`productlist`;
SELECT * FROM `mydb`.`productlist`;

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

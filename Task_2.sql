--- Создание таблицы employee
 CREATE TABLE employee (
	id INT NOT NULL PRIMARY KEY IDENTITY,
	[name] VARCHAR(25),
);

--- Создание таблицы sales
CREATE TABLE sales (
	id INT NOT NULL PRIMARY KEY IDENTITY,
	employee_id INT FOREIGN KEY REFERENCES employee(id),
	price INT NOT NULL,
);

 --- Добавление данных в таблицу employee
INSERT INTO employee ([name])
VALUES
	('Дмитрий'),
	('Владислав'),
	('Анатолий'),
	('Георгий'),
	('Александр');

   --- Добавление данных в таблицу sales
 INSERT INTO sales (employee_id,price)
 VALUES
	(5,100),
    (2,25),
    (3,42),
    (1,5),
	(3,67),
	(1,10),
	(2,225),
	(1,124),
	(5,324),
    (4,50),
	(4,162),
	(5,53),
	(2,15),
	(2,95),
	(1,44),
	(1,93),
	(2,101),
	(2,58),
	(3,18),
	(5,22);

SELECT employee.id,
	[name],
	COUNT(*) as sales_c, --- Вычисление количества продаж
	RANK() OVER(ORDER BY COUNT(*) DESC) as sales_rank_c,  --- Вычисление ранга по количествву  продаж
	SUM(price) as sales_s, --- Вычисление суммы продаж 
	RANK() OVER(ORDER BY SUM(price) DESC) as sales_rank_s --- Вычисление ранга по сумме  продаж
FROM employee, sales WHERE sales.employee_id = employee.id 
GROUP BY employee.id, [name] 
ORDER BY COUNT(*) DESC



--- �������� ������� employee
 CREATE TABLE employee (
	id INT NOT NULL PRIMARY KEY IDENTITY,
	[name] VARCHAR(25),
);

--- �������� ������� sales
CREATE TABLE sales (
	id INT NOT NULL PRIMARY KEY IDENTITY,
	employee_id INT FOREIGN KEY REFERENCES employee(id),
	price INT NOT NULL,
);

 --- ���������� ������ � ������� employee
INSERT INTO employee ([name])
VALUES
	('�������'),
	('���������'),
	('��������'),
	('�������'),
	('���������');

   --- ���������� ������ � ������� sales
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
	COUNT(*) as sales_c, --- ���������� ���������� ������
	RANK() OVER(ORDER BY COUNT(*) DESC) as sales_rank_c,  --- ���������� ����� �� �����������  ������
	SUM(price) as sales_s, --- ���������� ����� ������ 
	RANK() OVER(ORDER BY SUM(price) DESC) as sales_rank_s --- ���������� ����� �� �����  ������
FROM employee, sales WHERE sales.employee_id = employee.id 
GROUP BY employee.id, [name] 
ORDER BY COUNT(*) DESC




--- Объявление переменных 
DECLARE @count INT = 0 
DECLARE @start_date DATE = CAST(GETDATE()AS DATE)
DECLARE @ListDates TABLE ([data] DATE)

WHILE @count < 100
	BEGIN 
	INSERT INTO @ListDates	
		VALUES(@start_date) --- Добавление предыдущей даты вычесленной в цикле , на первом шаге добавляется текущая дата
	SET @start_date = DATEADD(day,FLOOR(RAND()*(7-2)+2),@start_date); --- Вычисление следующей даты в диапазоне от 2 до 7 дней 
	SET @count += 1;
	END;

SELECT * 
FROM @ListDates


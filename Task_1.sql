
--- ���������� ���������� 
DECLARE @count INT = 0 
DECLARE @start_date DATE = CAST(GETDATE()AS DATE)
DECLARE @ListDates TABLE ([data] DATE)

WHILE @count < 100
	BEGIN 
	INSERT INTO @ListDates	
		VALUES(@start_date) --- ���������� ���������� ���� ����������� � ����� , �� ������ ���� ����������� ������� ����
	SET @start_date = DATEADD(day,FLOOR(RAND()*(7-2)+2),@start_date); --- ���������� ��������� ���� � ��������� �� 2 �� 7 ���� 
	SET @count += 1;
	END;

SELECT * 
FROM @ListDates


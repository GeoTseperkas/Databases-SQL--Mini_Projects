CREATE PROCEDURE Rate_Flights AS
DECLARE @fno varchar (4)
DECLARE @price int
DECLARE @minfno varchar (4)

SELECT @minfno=min(fno) FROM flights
WHILE @minfno is NOT NULL
BEGIN
 SET @price= (SELECT price 
 FROM flights 
 WHERE fno=@minfno)

IF (@price is NOT NULL)
BEGIN
 
 SELECT CASE
 WHEN @price < 501 THEN @fno+': '+CAST(@price AS
 VARCHAR(12)) + ' - 3 (Low)'
 WHEN @price > 501 AND @price < 1501 THEN @fno+': '+CAST(@price AS
 VARCHAR(12)) + ' – 2 (Medium)'
 ELSE @fno+': '+CAST(@price AS VARCHAR(12)) + ' – 1 (High)'
 END
END
SELECT @minfno = min(fno)FROM flights WHERE @minfno < fno
END

EXECUTE Rate_Flights

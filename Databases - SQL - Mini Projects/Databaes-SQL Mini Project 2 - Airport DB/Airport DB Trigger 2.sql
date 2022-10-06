CREATE TABLE flight_history
( fno VARCHAR(4),
 usr_name VARCHAR(30),
 utime DATETIME NULL,
 price_old int,
 price_new int,
 );CREATE TRIGGER modify_price
ON flights AFTER UPDATE
 AS IF UPDATE (price)
 BEGIN
DECLARE @price_old int
DECLARE @price_new int
DECLARE @fno VARCHAR(4)
SELECT @price_old =(SELECT price FROM deleted)
SELECT @price_new =(SELECT price FROM inserted)
SELECT @fno =(SELECT fno FROM deleted)
INSERT INTO flight_history
 VALUES (@fno, USER_NAME(),
 GETDATE(), @price_old, @price_new)
 END UPDATE flights
 SET price=450
WHERE fno= 'A305'

SELECT * FROM flight_history
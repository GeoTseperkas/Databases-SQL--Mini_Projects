CREATE TRIGGER trigger_cert
ON certified
AFTER INSERT
AS
DECLARE @empid int
DECLARE @count int
SELECT @count=0
SET @empid = (SELECT empid FROM INSERTED)
SELECT @count=COUNT(*)
FROM certified
WHERE empid = @empid
IF (@count = 3)
BEGIN
 UPDATE employees
 SET salary = salary * 1.10
 WHERE empid = @empid
END

INSERT INTO certified VALUES (10,5)
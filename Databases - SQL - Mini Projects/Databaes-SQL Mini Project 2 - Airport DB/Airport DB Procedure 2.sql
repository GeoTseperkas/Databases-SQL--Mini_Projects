CREATE PROCEDURE cert_pilot@empid int, @firstname Varchar (30), @lastname Varchar (30), @aid int, @aname Varchar (50)AS
DECLARE @count int
DECLARE @count1 int
DECLARE @count2 int

SELECT @count=0
SELECT @count=COUNT(*)FROM employees
WHERE empid = @empidIF (@count=0)
BEGIN
 INSERT INTO employees VALUES (@empid, @lastname, @firstname, null)
 PRINT 'Employee Record Inserted' END
ELSE
PRINT 'Customer Record already exists' SELECT @count1=0
SELECT @count1=COUNT(*)FROM aircrafts
WHERE aid = @aidIF (@count1=0)
BEGIN
 INSERT INTO aircrafts VALUES (@aid, @aname, null)
 PRINT 'Aircraft Record Inserted' END
ELSE
PRINT 'Aircraft Record already exists' SELECT @count2=0
SELECT @count2=COUNT(*)FROM certified
WHERE empid =@empid and aid = @aidIF (@count1=0)
BEGIN
 INSERT INTO certified VALUES (@empid, @aid)
 PRINT 'Cert Record Inserted' END
ELSE
 PRINT 'Cert Record already exists' EXECUTE cert_pilot
@empid= 99, @firstname = 'Γιώργος' , @lastname = 'Τσεπέρκας' , @aid = 99, @aname = 'Random R-25'
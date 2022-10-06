SELECT * 
FROM flights
WHERE toCity = 'Τορόντο' AND depDate = '2018-05-01'

SELECT *
FROM flights
WHERE distance BETWEEN 900 AND 1500
ORDER BY distance ASC

SELECT fromCity, COUNT(fromCity) AS CountOfFlights
FROM flights
WHERE depDate BETWEEN '2018-05-01' AND '2018-05-30'
GROUP BY fromCity

SELECT toCity, COUNT(toCity) AS CountOfFlights
FROM flights
GROUP BY toCity
HAVING COUNT(toCity) >= 3

SELECT lastname, firstname
FROM employees e
JOIN certified c
ON e.empid = c.empid
GROUP BY lastname, firstname
HAVING COUNT(c.empid) > 2

SELECT SUM(salary) as SumOfSalaryCost
FROM employees

SELECT SUM(salary) as SumSalary
FROM (SELECT DISTINCT e.empid, e.lastname, e.firstname, e.salary FROM certified c JOIN employees e ON c.empid = e.empid) a

SELECT SUM(salary) as SumSalary
FROM employees
WHERE empid NOT IN (SELECT * FROM certifies)

SELECT aname
FROM aircrafts
WHERE crange >= (SELECT distance FROM flights WHERE fromCity = 'Αθήνα' AND toCity = 'Μελβούρνη')

SELECT DISTINCT lastname, firstname
FROM employees e, aircrafts a, certified c
WHERE e.empid = c.empid and c.aid = a.aid AND a.aname LIKE 'Boeing%'

SELECT DISTINCT lastname, firstname
FROM employees e, aircrafts a, certified c
WHERE e.empid = c.empid and c.aid = a.aid AND crange >= 3000
EXCEPT
SELECT DISTINCT lastname, firstname
FROM employees e, aircrafts a, certified c
WHERE e.empid = c.empid and c.aid = a.aid AND a.aname LIKE 'Boeing%'

SELECT lastname, firstname
FROM employees
WHERE salary IN (SELECT MAX(salary) FROM employees)

SELECT lastname, firstname
FROM employees
WHERE salary IN (SELECT MAX(salary) FROM employees WHERE salary < (SELECT MAX(salary) FROM employees))

SELECT DISTINCT aname
FROM employees e, aircrafts a, certified c
WHERE e.empid = c.empid and c.aid = a.aid AND e.salary >= 6000

SELECT e.empid, max(a.crange) as MaxFlightRange
FROM employees e, aircrafts a, certified c
WHERE e.empid = c.empid and c.aid = a.aid
GROUP BY e.empid
HAVING COUNT(c.empid) > 2

SELECT lastname, firstname
FROM employees
WHERE salary < (SELECT TOP 1 price FROM flights WHERE toCity = 'Μελβούρνη')

SELECT lastname, firstname, salary
FROM employees e
LEFT JOIN certified c
ON c.empid = e.empid
GROUP BY lastname, firstname, salary
HAVING salary > (SELECT AVG(salary) FROM employees e JOIN certified c ON e.empid = c.empid) AND COUNT(c.empid) = 0

CREATE VIEW pilots AS
SELECT DISTINCT e.empid, e.lastname, e.firstname, e.salary
FROM certified c
JOIN employees e
ON c.empid = e.empid

CREATE VIEW others AS
SELECT DISTINCT e.empid, e.lastname, e.firstname, e.salary
FROM certified c,certified c
WHERE e.empid NOT IN (SELECT empid FROM certified)

SELECT SUM(salary) as PilotsSumSalary
FROM pilots

SELECT SUM(salary) as OthersSumSalary
FROM others

SELECT lastname, firstname, salary
FROM others
WHERE salary > (SELECT AVG(salary) FROM pilots)

CREATE VIEW planeflights AS
SELECT aname, fno, fromCity, toCity from flights, aircrafts where distance <= crange

SELECT aname, COUNT(fno) NumberOfFlights
FROM planeflights
GROUP BY aname

CREATE TABLE Sales (
   name VARCHAR2(50),
   date DATE,
   jobs NUMBER
);

CREATE TABLE Imports (
   name VARCHAR2(50),
   date DATE,
   jobs NUMBER
);

CREATE TABLE Revenue_Analysis (
   name VARCHAR2(50),
   date DATE,
   jobs NUMBER
);

CREATE TABLE Profit_Analysis (
   name VARCHAR2(50),
   date DATE,
   jobs NUMBER
);


INSERT INTO Sales (name, date, jobs) VALUES ('SalesName1', TO_DATE('01/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName2', TO_DATE('02/03/2023', 'DD/MM/YYYY'), 20);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName3', TO_DATE('03/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName4', TO_DATE('04/03/2023', 'DD/MM/YYYY'), 40);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName5', TO_DATE('05/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName6', TO_DATE('06/03/2023', 'DD/MM/YYYY'), 60);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName7', TO_DATE('07/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName8', TO_DATE('08/03/2023', 'DD/MM/YYYY'), 80);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName9', TO_DATE('09/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName10', TO_DATE('10/03/2023', 'DD/MM/YYYY'), 100);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName1', TO_DATE('11/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName2', TO_DATE('12/03/2023', 'DD/MM/YYYY'), 20);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName3', TO_DATE('13/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName4', TO_DATE('14/03/2023', 'DD/MM/YYYY'), 40);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName5', TO_DATE('15/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName6', TO_DATE('16/03/2023', 'DD/MM/YYYY'), 60);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName7', TO_DATE('17/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName8', TO_DATE('18/03/2023', 'DD/MM/YYYY'), 80);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName9', TO_DATE('19/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName10', TO_DATE('20/03/2023', 'DD/MM/YYYY'), 100);
INSERT INTO Sales (name, date, jobs) VALUES ('SalesName100', TO_DATE('10/03/2023', 'DD/MM/YYYY'), 0);


INSERT INTO Imports (name, date, jobs) VALUES ('SalesName1', TO_DATE('01/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName2', TO_DATE('02/03/2023', 'DD/MM/YYYY'), 20);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName3', TO_DATE('03/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName4', TO_DATE('04/03/2023', 'DD/MM/YYYY'), 40);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName5', TO_DATE('05/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName6', TO_DATE('06/03/2023', 'DD/MM/YYYY'), 60);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName7', TO_DATE('07/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName8', TO_DATE('08/03/2023', 'DD/MM/YYYY'), 80);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName9', TO_DATE('09/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName10', TO_DATE('10/03/2023', 'DD/MM/YYYY'), 100);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName1', TO_DATE('11/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName2', TO_DATE('12/03/2023', 'DD/MM/YYYY'), 20);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName3', TO_DATE('13/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName4', TO_DATE('14/03/2023', 'DD/MM/YYYY'), 40);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName5', TO_DATE('15/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName6', TO_DATE('16/03/2023', 'DD/MM/YYYY'), 60);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName7', TO_DATE('17/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName8', TO_DATE('18/03/2023', 'DD/MM/YYYY'), 80);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName9', TO_DATE('19/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName10', TO_DATE('20/03/2023', 'DD/MM/YYYY'), 100);
INSERT INTO Imports (name, date, jobs) VALUES ('SalesName100', TO_DATE('11/03/2023', 'DD/MM/YYYY'), 0);


INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName1', TO_DATE('01/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName3', TO_DATE('03/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName5', TO_DATE('05/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName7', TO_DATE('07/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName9', TO_DATE('09/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName1', TO_DATE('11/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName3', TO_DATE('13/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName5', TO_DATE('15/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName7', TO_DATE('17/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName9', TO_DATE('19/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Revenue_Analysis (name, date, jobs) VALUES ('SalesName100', TO_DATE('12/03/2023', 'DD/MM/YYYY'), 0);


INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName1', TO_DATE('01/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName3', TO_DATE('03/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName5', TO_DATE('05/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName7', TO_DATE('07/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName9', TO_DATE('09/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName1', TO_DATE('11/03/2023', 'DD/MM/YYYY'), 10);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName3', TO_DATE('13/03/2023', 'DD/MM/YYYY'), 30);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName5', TO_DATE('15/03/2023', 'DD/MM/YYYY'), 50);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName7', TO_DATE('17/03/2023', 'DD/MM/YYYY'), 70);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName9', TO_DATE('19/03/2023', 'DD/MM/YYYY'), 90);
INSERT INTO Profit_Analysis (name, date, jobs) VALUES ('SalesName100', TO_DATE('13/03/2023', 'DD/MM/YYYY'), 0);
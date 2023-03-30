SET SERVEROUTPUT ON;

DECLARE 
    start_date DATE;
    end_date DATE;
    sql_query VARCHAR2(4000);
BEGIN
    start_date := TO_DATE('10/03/2023', 'DD/MM/YYYY'); 
    end_date := TO_DATE('20/03/2023', 'DD/MM/YYYY'); 

    sql_query := 'SELECT 
                        name, ';

    FOR i IN 0..(end_date - start_date)
    LOOP
        sql_query := sql_query || 'COALESCE(SUM(CASE WHEN t.date = ''' 
                               || TO_CHAR(start_date + i, 'DD/MM/YYYY') 
                               || ''' THEN t.jobs END), 0) AS "' 
                               || TO_CHAR(start_date + i, 'DD/MM/YYYY') || '", ';
    END LOOP;

    sql_query := sql_query || 'COALESCE(SUM(jobs), 0) AS "Grand Total"
                            FROM (
                                SELECT name, date, jobs FROM Sales
                                UNION ALL
                                SELECT name, date, jobs FROM Imports
                                UNION ALL
                                SELECT name, date, jobs FROM Revenue_Analysis
                                UNION ALL
                                SELECT name, date, jobs FROM Profit_Analysis
                            ) t
                            WHERE t.date >= ''' || TO_CHAR(start_date, 'DD/MM/YYYY') 
                                                || ''' AND t.date <= ''' 
                                                || TO_CHAR(end_date, 'DD/MM/YYYY') 
                                                || '''
                            GROUP BY name
                            ORDER BY name';
   
    EXECUTE IMMEDIATE sql_query;
    DBMS_OUTPUT.PUT_LINE(sql_query);
    DBMS_SQL.RETURN_RESULT(sql_query);
    
END;
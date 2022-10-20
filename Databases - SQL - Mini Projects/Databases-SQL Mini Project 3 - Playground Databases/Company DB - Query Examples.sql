USE company;

SELECT *
FROM facilities
WHERE facid IN (1,5);

SELECT firstname, surname, joindate
FROM members
WHERE joindate >= '2012-09-01';

SELECT DISTINCT surname
FROM members
ORDER BY surname
LIMIT 10;

SELECT *
FROM facilities
WHERE name LIKE '%Tennis%';

SELECT name,
CASE 
    WHEN (monthlymaintenance > 100) 
    THEN 'expensive'
    ELSE 'cheap'
END AS cost
FROM facilities;

SELECT firstname, surname, joindate
FROM members
WHERE joindate = 
(
SELECT MAX(joindate)
FROM members
);

SELECT DISTINCT CONCAT(memes.firstname, ' ' , memes.surname) AS member, facs.name AS facility 
FROM members memes
JOIN bookings bks
ON memes.memid = bks.memid
JOIN facilities facs
ON bks.facid = facs.facid
WHERE bks.facid in (0,1);

SELECT recommendedby, COUNT(*)
FROM members
WHERE recommendedby IS NOT NULL
GROUP BY recommendedby;

SELECT facid, MONTH(starttime) AS Month, SUM(slots) AS "Total Slots"
FROM bookings
WHERE starttime >= '2012-01-01'
AND starttime < '2013-01-01'
GROUP BY facid, Month;

SELECT facs.name, SUM(slots * 
CASE
WHEN memid = 0 
THEN facs.guestcost
ELSE facs.membercost
END) AS revenue
FROM bookings bks
JOIN facilities facs
ON bks.facid = facs.facid
GROUP BY facs.name;

SELECT mems.memid, bks.starttime
FROM bookings bks
JOIN members mems
ON mems.memid = bks.memid
WHERE mems.firstname = 'Matthew';

SELECT name, revenue 
FROM 
(SELECT facs.name, 
SUM(CASE
WHEN memid = 0 
THEN slots * facs.guestcost
ELSE slots * membercost
END) AS revenue
FROM bookings bks
JOIN facilities facs
ON bks.facid = facs.facid
GROUP BY facs.name
) AS agg 
WHERE revenue < 1000;

SELECT facid, SUM(slots) AS totalslots
FROM bookings
GROUP BY facid
HAVING SUM(slots) = 
(SELECT MAX(sum2.totalslots) 
FROM
(SELECT SUM(slots) AS totalslots
FROM bookings
GROUP BY facid
) AS sum2);

SELECT DISTINCT recs.firstname as firstname, recs.surname AS surname
FROM members mems
JOIN members recs
ON recs.memid = mems.recommendedby
ORDER BY surname, firstname;

WITH RECURSIVE recommenders(recommender, member) AS (
SELECT recommendedby, memid
FROM members
UNION ALL
SELECT mems.recommendedby, recs.member
FROM recommenders recs
INNER JOIN members mems
ON mems.memid = recs.recommender
) 
SELECT recs.member, recs.recommender, mems.firstname, mems.surname
FROM recommenders recs
INNER JOIN members mems
ON recs.recommender = mems.memid
WHERE recs.member = 22 OR recs.member = 12;
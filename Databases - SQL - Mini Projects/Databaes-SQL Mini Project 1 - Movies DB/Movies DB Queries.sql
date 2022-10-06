SELECT fname, lname
FROM actors
WHERE lname like 'Κ%'
ORDER BY lname

SELECT title, pyear
FROM movies
WHERE pyear BETWEEN 1990 AND 2007
ORDER BY pyear DESC

SELECT title,lname,fname
FROM movies m
LEFT JOIN directors d
ON m.did = d.did
WHERE production = 'GRC'
ORDER BY lname

SELECT title, pyear
FROM movies m
JOIN directors d
ON m.did = d.did
WHERE lname = 'Σακελλάριος'

SELECT title, pyear
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and lname = 'Eastwood'

SELECT fname, lname
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and title = 'Amelie'

SELECT count(DISTINCT m.mid) as MoviesOnDVD
FROM movies m
JOIN copies c
ON m.mid = c.mid
WHERE medium = 'DVD'

SELECT count(c.mid) as SumOfCopies
FROM movies m
JOIN copies c
ON m.mid = c.mid
WHERE medium = 'DVD'


SELECT TOP 1 price
FROM copies
ORDER BY price DESC

SELECT sum(c.price) as SumOfCostBluRay
FROM movies m
JOIN copies c
ON m.mid = c.mid
WHERE medium = 'BLU RAY'

SELECT fname, lname, count(mid) as MoviesMake
FROM directors d
JOIN movies m
ON d.did = m.did
GROUP BY lname, fname

SELECT count(m.mid) as PapMovieCount
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and lname = 'Παπαγιαννόπουλος'

SELECT fname, lname
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and production != 'GRC'

SELECT title
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and lname ='Κούρκουλος'
INTERSECT
SELECT title
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and lname ='Καρέζη'

SELECT title
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and lname ='Καρέζη'
EXCEPT
SELECT title
FROM movies m, movie_actor ma, actors a
WHERE m.mid = ma.mid and ma.actid = a.actid and lname ='Κούρκουλος'

SELECT title
FROM movies m, movie_cat mc, categories c
WHERE m.mid = mc.mid and mc.catid = c.catid and category = 'Κωμωδία'
UNION
SELECT title
FROM movies m, movie_cat mc, categories c
WHERE m.mid = mc.mid and mc.catid = c.catid and category = 'Αισθηματική'


SELECT category, count(mc.mid) as Movies
FROM movies m, movie_cat mc, categories c
WHERE m.mid = mc.mid and mc.catid = c.catid
GROUP BY category
HAVING count(mc.mid) > 5

SELECT lname, fname, count(mid) as Movies
FROM directors d
LEFT JOIN movies m
ON d.did = m.did
GROUP BY lname, fname

DELETE FROM categories
WHERE category = 'Βιογραφία'

UPDATE copies
SET price = 70.00
WHERE medium = 'DVD' and mid = (SELECT mid FROM movies WHERE title = 'Amelie')

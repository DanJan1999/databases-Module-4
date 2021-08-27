-- PART 1 SQL SKILLS

-- Artist Table:
INSERT INTO artist (artist_id, name)
VALUES (276, 'Twenty One Pilots'),
(277, 'RoofTop'),
(278, 'Shutter Theory');

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5
OFFSET 10;

-- Employee Table:
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- Invoice Table:
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice 
WHERE total > 5;

SELECT COUNT(*) FROM invoice 
WHERE total < 5;

SELECT SUM(total) FROM invoice;

-- JOIN Queries (Various Tables):
SELECT * FROM invoice
 JOIN invoice_line
 ON invoice.invoice_id = invoice_line.invoice_id
WHERE unit_price > 0.99;

SELECT invoice_date, first_name, last_name, total FROM invoice
 JOIN customer
 ON invoice.customer_id = customer.customer_id;

SELECT c.first_name AS customerFirst, c.last_name AS customerLast, e.first_name AS supportRepFirst, e.last_name AS supportRepLast
FROM customer c
  JOIN employee e
  ON c.support_rep_id = e.employee_id;

SELECT alb.title AS albumTitle, art.name AS artistName
FROM album alb 
  JOIN artist art
  ON alb.artist_id = art.artist_id;

--   EXTRA CREDIT:

-- Artist Table:
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10
OFFSET 100;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- Employee Table:
SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

-- Invoice Table:
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) from invoice;

-- More JOIN Queries:
SELECT p.playlist_track_id AS track, t.track_id AS trackId
FROM playlist_track p
  JOIN track t
  ON p.track_id = t.track_id;

SELECT t.name AS trackName FROM track t
  JOIN playlist_track p
  ON t.track_id = p.track_id
WHERE playlist_id = 5;

SELECT t.name AS trackName, p.name AS playlist
FROM track t
	JOIN playlist_track pt
  	ON pt.track_id = t.track_id
  JOIN playlist p
    ON pt.playlist_id = p.playlist_id;

SELECT t.name AS trackName, a.title AS albumTitle
FROM track t
	JOIN genre g
  	ON t.genre_id = g.genre_id
  JOIN album a
  	ON a.album_id = t.album_id
  WHERE g.name = 'Alternative & Punk';
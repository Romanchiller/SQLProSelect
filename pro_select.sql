SELECT name, COUNT(artist_id) FROM artistsgenres a
JOIN  genres g ON a.genre_id  = g.id
GROUP BY name 
ORDER BY COUNT DESC;

SELECT COUNT(track_id) from collectiontracks c 
JOIN collection c2 ON c.collection_id = c2.id 
WHERE date > '31.12.2018' and date < '1.01.2021';

SELECT a.name, AVG(time) FROM tracks t
JOIN albums a ON t.album_id = a.id 
GROUP BY a.name
ORDER BY AVG ASC;

SELECT a.name FROM artists a
WHERE a.name NOT IN (
SELECT a.name FROM artists a
JOIN albumsartists a2 ON a.id = a2.artists_id 
JOIN albums a3  ON a2.album_id = a3.id
WHERE a3.date = '2020');

SELECT DISTINCT(c.name) FROM collection c
JOIN collectiontracks c2 ON c.id = c2.collection_id 
JOIN tracks t ON c2.track_id = t.id 
JOIN albums a ON t.album_id = a.id 
JOIN albumsartists a2 ON a.id = a2.album_id 
JOIN artists a3 ON a2.artists_id = a3.id
WHERE a3.name = 'Баста';

SELECT a.name FROM albums a 
JOIN albumsartists a2 ON a.id = a2.album_id 
JOIN artists a3 ON a2.artists_id = a3.id 
JOIN artistsgenres a4 ON a3.id = a4.artist_id 
GROUP BY a.name, a3.id 
HAVING COUNT(a4.genre_id) > 1;

SELECT t.name, c.collection_id  FROM tracks t 
FULL OUTER JOIN collectiontracks c ON t.id = c.track_id
WHERE  c.collection_id  IS NULL;


SELECT a.name, t.name from artists a
JOIN albumsartists a2 ON a.id = a2.artists_id 
JOIN albums a3 ON a2.album_id = a3.id 
JOIN tracks t ON a3.id = t.album_id 
WHERE t.time = (SELECT MIN(time) from tracks t);

SELECT a.name FROM albums a 
JOIN tracks t ON a.id = t.album_id 
GROUP BY a.name
HAVING COUNT(t.id) = (
SELECT COUNT(t.id) FROM tracks t
JOIN albums a ON t.album_id = a.id 
GROUP BY a.name 
ORDER BY COUNT(t.id)
LIMIT 1);







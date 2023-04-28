--Количество исполнителей в каждом жанре.   
   SELECT name, COUNT(singer_id) singer_n FROM genre g 
LEFT JOIN singer_genre sg ON g.genre_id = sg.genre_id
 GROUP BY g.name
 ORDER BY singer_n DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.
   SELECT COUNT(track_name) track_n FROM album a  
LEFT JOIN track t ON a.album_id = t.album_id
    WHERE a.release_year BETWEEN 2019 AND 2020

--Средняя продолжительность треков по каждому альбому.
   SELECT album_name, AVG(lenght) avg_track_l FROM album a  
LEFT JOIN track t ON a.album_id = t.album_id
 GROUP BY a.album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
   SELECT name FROM singer s
    WHERE s.name NOT IN (
   SELECT name FROM singer s 
LEFT JOIN singer_album sa ON s.singer_id = sa.singer_id
LEFT JOIN album a ON sa.album_id = a.album_id
    WHERE a.release_year = 2020
    );
   
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
   SELECT c.name FROM collection c
LEFT JOIN collection_track ct ON c.collection_id = ct.collection_id
LEFT JOIN track t ON ct.track_id = t.track_id
LEFT JOIN singer_album sa ON t.album_id = sa.album_id 
LEFT JOIN singer s ON sa.singer_id = s.singer_id 
    WHERE s.name = 'TAKE THAT'; 
 
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
  SELECT DISTINCT album_name FROM album a
LEFT JOIN singer_album sa ON a.album_id = sa.album_id 
LEFT JOIN singer s ON sa.singer_id = s.singer_id
LEFT JOIN singer_genre sg ON s.singer_id = sg.singer_id
 GROUP BY a.album_name, sg.singer_id
   HAVING COUNT(sg.genre_id) > 1;
  
--Наименования треков, которые не входят в сборники.
   SELECT track_name FROM track t 
LEFT JOIN collection_track ct ON t.track_id = ct.track_id
    WHERE ct.collection_id IS NULL;  

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, 
-- теоретически таких треков может быть несколько.
   SELECT s.name, t.lenght FROM singer s 
LEFT JOIN singer_album sa ON s.singer_id = sa.singer_id 
LEFT JOIN album a ON sa.album_id = a.album_id
LEFT JOIN track t ON a.album_id = t.album_id
 GROUP BY s.name, t.lenght
   HAVING lenght = (SELECT MIN(lenght) FROM track);
   
--Названия альбомов, содержащих наименьшее количество треков.
   SELECT album_name, COUNT(*) FROM track t
LEFT JOIN album a ON a.album_id = t.album_id
 GROUP BY album_name
   HAVING COUNT(*) = (
   SELECT MIN(mycount)
     FROM (SELECT album_name, COUNT(*) mycount 
     FROM track t 
LEFT JOIN album a ON a.album_id = t.album_id
 GROUP BY album_name) foo);
   
   
  
  
  
  
  
  
  
  
  
  
  
  

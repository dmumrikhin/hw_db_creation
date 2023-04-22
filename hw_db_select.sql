  SELECT album_name FROM album
   WHERE release_year = 2018;
 
  SELECT track_name FROM track 
ORDER BY lenght DESC
   LIMIT 1; 

  SELECT track_name FROM track
   WHERE lenght >= 3.5;
  
  SELECT name FROM collection
   WHERE year BETWEEN 2018 AND 2020;
  
  SELECT name FROM singer
   WHERE (LENGTH(name) - LENGTH(REPLACE(name,' ','')) = 0);
  
  SELECT track_name FROM track
   WHERE LOWER(track_name) LIKE '%my%' OR track_name LIKE '%мой%';
  
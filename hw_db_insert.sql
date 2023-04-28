INSERT INTO singer(name)
	 VALUES ('TOMAS N EVERGREEN'),
	  	    ('CHRISTINA AGUILERA'),
	        ('THE WEEKND'),
	        ('TOVE LO'),
	        ('ONE REPUBLIC'),
	        ('ED SHEERAN'),
	        ('TAKE THAT'),
	        ('SHAKIRA'),
	        ('DEPECHE MODE'), 
	        ('DARREN HAYES'); 
	
INSERT INTO genre(name)
	 VALUES ('Art (classical)'),
	  	    ('Avant-garde and experimental'),
	        ('Popular'),
	        ('Country'),
	        ('Electronic'),
	        ('Hip hop'),
	        ('Jazz'),
	        ('Pop'),
	        ('Rock');

INSERT INTO album(album_name, release_year)
	 VALUES ('Since You''ve Been Gone', 2007),
	  	    ('Back to Basics', 2006),
	        ('After Hours', 2018),
	        ('Dirt Femme', 2022 ),
	        ('Waking Up', 2009),
	        ('Equals', 2021),
	        ('Beautiful World', 2006),
	        ('Laundry Service', 2001),
	        ('Exciter', 2001),
	        ('Spin', 2002);

INSERT INTO track(track_name, lenght, album_id)
	 VALUES ('Since You''ve Been Gone', '00:03:40', 1),
	  	    ('Living On A Desert Island', '00:03:55', 2),
	        ('Hurt', '00:04:03', 2),
	        ('Candyman', '00:03:14', 2),
	        ('Heartles', '00:03:18', 3),
	        ('Blinding Lights', '00:03:21', 3),
	        ('How Long', '00:03:18', 4),
	        ('No One Dies from Love', '00:03:06', 4),
	        ('All the Right Moves', '00:03:58', 5),
	   		('My secret', '00:03:44', 5),
	   		('Bad Habits', '00:03:51', 6),
	   		('Shivers', '00:03:27', 6),
	   		('Patience', '00:03:20', 7),
	   		('Shine', '00:03:31', 7),
	   		('Whenever, Wherever', '00:03:16', 8),
	   		('Te Dejo Madrid', '00:03:07', 8),
	   		('Dream On', '00:04:19', 9),
	   		('I Feel Loved', '00:04:20', 9),
	   		('Insatiable', '00:05:10', 10),
	   		('Strange Relationship', '00:05:00', 10);
	   		
INSERT INTO singer_album
	 VALUES (1, 1),
	  	    (2, 2),
	  	    (3, 3),
	  	    (4, 4),
	  	    (5, 5),
	  	    (6, 6),
	  	    (7, 7),
	  	    (8, 8),
	  	    (9, 9),
	  	    (10, 10);
	  	   
INSERT INTO singer_genre
	 VALUES (1, 8),
	  	    (2, 8),
	  	    (3, 8),
	  	    (4, 8),
	  	    (5, 8),
	  	    (6, 8),
	  	    (7, 9),
	  	    (8, 8),
	  	    (9, 5),
	  	    (10, 8);
	  	   
INSERT INTO collection(name, year)
	 VALUES ('Collection 1', 2017),
	 		('Collection 2', 2018),
	 		('Collection 3', 2019),
	 		('Collection 4', 2020),
	 		('Collection 5', 2021),
	 		('Collection 6', 2022),
	 		('Collection 7', 2023),
	 		('Collection 8', 2023);
	 	
INSERT INTO collection_track
	 VALUES (1, 1),
	  	    (1, 3),
	  	    (2, 2),
	  	    (2, 4),
	  	    (3, 9),
	  	    (3, 13),
	  	    (4, 5),
	  	    (4, 20),
	  	    (5, 11),
	  	    (5, 17),
	  	    (6, 6),
	  	    (6, 10),
	  	    (7, 18),
	  	    (7, 19),
	  	    (8, 7),
	  	    (8, 14);
	 	
	 	
	 		
	  	    
	        
	  	    









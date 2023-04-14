CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer (
	singer_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(80) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(80) NOT NULL,
	lenght INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year INTEGER NOT NULL
	);

CREATE TABLE IF NOT EXISTS Singer_genre (
	singer_id INTEGER REFERENCES Singer(singer_id),	
	genre_id INTEGER REFERENCES Genre(genre_id),
	CONSTRAINT siner_gernre_pk PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Singer_album (
	singer_id INTEGER REFERENCES Singer(singer_id),	
	album_id INTEGER REFERENCES Album(album_id),
	CONSTRAINT singer_album_pk PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Collection_track (
	collection_id INTEGER REFERENCES Collection(collection_id),	
	track_id INTEGER REFERENCES Track(track_id),
	CONSTRAINT collection_track_pk PRIMARY KEY (collection_id, track_id)
);
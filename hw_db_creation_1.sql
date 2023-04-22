CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS singer (
	singer_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(80) NOT NULL,
	release_year INTEGER NOT NULL
	CHECK (release_year>=1920)
);

CREATE TABLE IF NOT EXISTS track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(80) NOT NULL,
	lenght DECIMAL NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(album_id)
	CHECK (lenght<=90)
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year INTEGER NOT NULL
	CHECK (year>=1920)
	);

CREATE TABLE IF NOT EXISTS singer_genre (
	singer_id INTEGER REFERENCES singer(singer_id),	
	genre_id INTEGER REFERENCES genre(genre_id),
	CONSTRAINT siner_gernre_pk PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS singer_album (
	singer_id INTEGER REFERENCES singer(singer_id),	
	album_id INTEGER REFERENCES slbum(album_id),
	CONSTRAINT singer_album_pk PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS collection_track (
	collection_id INTEGER REFERENCES collection(collection_id),	
	track_id INTEGER REFERENCES track(track_id),
	CONSTRAINT collection_track_pk PRIMARY KEY (collection_id, track_id)
);


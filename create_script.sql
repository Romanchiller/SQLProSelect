CREATE TABLE IF NOT EXISTS Albums (
id SERIAL PRIMARY KEY UNIQUE,
name VARCHAR(50) NOT NULL,
date INTEGER);

CREATE TABLE IF NOT EXISTS Artists (
id SERIAL PRIMARY KEY UNIQUE,
name VARCHAR(50) NOT NULL);


CREATE TABLE IF NOT EXISTS Genres (
id SERIAL PRIMARY KEY UNIQUE,
name VARCHAR(30) NOT NULL UNIQUE);

CREATE TABLE IF NOT EXISTS Collection (
id SERIAL PRIMARY KEY UNIQUE,
name VARCHAR(50) NOT NULL,
date DATE);

CREATE TABLE IF NOT EXISTS Tracks (
id SERIAL PRIMARY KEY,
name VARCHAR NOT NULL,
time INTERVAL,
album_id INTEGER REFERENCES Albums(id) );


CREATE TABLE IF NOT EXISTS CollectionTracks(
id SERIAL PRIMARY KEY UNIQUE,
collection_id INTEGER REFERENCES Collection(id),
track_id INTEGER REFERENCES Tracks(id));

CREATE TABLE IF NOT EXISTS AlbumsArtists(
id SERIAL PRIMARY KEY UNIQUE,
album_id INTEGER REFERENCES Albums(id),
artists_id INTEGER REFERENCES Artists(id));

CREATE TABLE IF NOT EXISTS ArtistsGenres(
id SERIAL PRIMARY KEY UNIQUE,
artist_id INTEGER REFERENCES Artists(id),
genre_id INTEGER REFERENCES Genres(id));
-- Create Item class table:

CREATE TABLE item(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  genre TEXT,
  author TEXT,
  label TEXT,
  publish_date DATE,
  archived BOOLEAN,
);

-- Create Book class table:

CREATE TABLE book(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  publisher TEXT,
  cover_state TEXT,
  FOREIGN KEY (id) REFERENCES item (id),
);

-- Create MusicAlbum class table:

CREATE TABLE music_album(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  on_spotify BOOLEAN,
  FOREIGN KEY (id) REFERENCES item (id),
);

-- Create Game class table:

CREATE TABLE game(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  multiplayer BOOLEAN,
  last_played_at DATE,
  FOREIGN KEY (id) REFERENCES item (id),
);

-- Create Author class table:

CREATE TABLE author(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name TEXT,
  last_name TEXT,
  FOREIGN KEY (id) REFERENCES item (id),
);

-- Create Label class table:

CREATE TABLE label(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title TEXT,
  color TEXT,
  FOREIGN KEY (id) REFERENCES item (id),
);

-- Create Genre class table:

CREATE TABLE genre(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name TEXT,
  FOREIGN KEY (id) REFERENCES item (id),
);

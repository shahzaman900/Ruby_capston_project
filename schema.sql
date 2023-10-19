CREATE DATABASE CatalogOfThings;

CREATE TABLE item (
    id  INT GENERATED ALWAYS AS IDENTITY,
    genre_id INT,
    author_id INT,
    label_id INT,
    publish_date DATE,
    archived BOOLEAN,
    PRIMARY KEY(id),
    FOREIGN KEY (genre_id) REFERENCES genres (id),
    FOREIGN KEY (author_id) REFERENCES authors (id),
    FOREIGN KEY (label_id) REFERENCES labels (id)
);

-- Create the books table
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL,
  cover_state VARCHAR(255) NOT NULL,
  publish_date DATE NOT NULL,
  archived BOOLEAN DEFAULT false
);

-- Create the labels table
CREATE TABLE labels (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
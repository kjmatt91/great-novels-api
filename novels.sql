CREATE DATABASE novels;

CREATE USER 'novels'@'localhost' IDENTIFIED BY 'N0v31s';

GRANT ALL ON novels.* TO 'novels'@'localhost';

USE novels;

CREATE TABLE authors(
  id INT auto_increment,
  author VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id)
);

CREATE TABLE titles(
  id INT auto_increment,
  title VARCHAR(255) NOT NULL,
  authorId INT NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id),
  FOREIGN KEY (authorId) REFERENCES authors(id)
);

CREATE TABLE genres (
  id INT auto_increment,
  genre VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id),
);

CREATE TABLE titlesGenres (
  id INT auto_increment,
  titleId INT NOT NULL,
  genreId INT NOT NULL,
  createdAt DATETIME DEFAULT NOW(),
  updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
  deletedAt DATETIME,
  PRIMARY KEY(id),
  FOREIGN KEY (titleId) REFERENCES titles(id),
  FOREIGN KEY (genreId) REFERENCES genres(id),
);

INSERT INTO authors (author) VALUES ("Bram Stoker");
INSERT INTO authors (author) VALUES ("Oscar Wilde");
INSERT INTO authors (author) VALUES ("Alice Walker");
INSERT INTO authors (author) VALUES ("Leo Tolstoy");
INSERT INTO authors (author) VALUES ("Charles Dickens");
INSERT INTO authors (author) VALUES ("Arthur Miller");
INSERT INTO authors (author) VALUES ("Alexandre Dumas");
INSERT INTO authors (author) VALUES ("Arthur Conan Doyle");
INSERT INTO authors (author) VALUES ("Robert Louis Stevenson");
INSERT INTO authors (author) VALUES ("Fyodor Dostoyevsky");
INSERT INTO authors (author) VALUES ("Agatha Christie");
INSERT INTO authors (author) VALUES ("Ray Bradbury");
INSERT INTO authors (author) VALUES ( "George Orwell");
INSERT INTO authors (author) VALUES ("H.G. Wells");
INSERT INTO authors (author) VALUES ("Chinua Achebe");

INSERT INTO titles (title, authorId) VALUES ("Dracula", 1);
INSERT INTO titles (title, authorId) VALUES ("The Picture of Dorian Gray", 2);
INSERT INTO titles (title, authorId) VALUES ("The Color Purple", 3);
INSERT INTO titles (title, authorId) VALUES ("War and Peace", 4);
INSERT INTO titles (title, authorId) VALUES ("A Tale of Two Cities", 5);
INSERT INTO titles (title, authorId) VALUES ("The Crucible", 6);
INSERT INTO titles (title, authorId) VALUES ("The Three Musketeers", 7);
INSERT INTO titles (title, authorId) VALUES ("The Hound of the Baskervilles", 8);
INSERT INTO titles (title, authorId) VALUES ("The Strange Case of Dr. Jekyll and Mr. Hyde", 9);
INSERT INTO titles (title, authorId) VALUES ("Crime and Punishment", 10);
INSERT INTO titles (title, authorId) VALUES ("Murder on the Orient Express", 11);
INSERT INTO titles (title, authorId) VALUES ("Fahrenheit 451", 12);
INSERT INTO titles (title, authorId) VALUES ("Animal Farm", 13);
INSERT INTO titles (title, authorId) VALUES ("The Time Machine", 14);
INSERT INTO titles (title, authorId) VALUES ("Things Fall Apart", 15);

INSERT INTO genres (genre) VALUES ("Adventure");
INSERT INTO genres (genre) VALUES ("African Literature");
INSERT INTO genres (genre) VALUES ("Crime");
INSERT INTO genres (genre) VALUES ("Drama");
INSERT INTO genres (genre) VALUES ("Dystopia");
INSERT INTO genres (genre) VALUES ("Fantasy");
INSERT INTO genres (genre) VALUES ("Fiction");
INSERT INTO genres (genre) VALUES ("French Literature");
INSERT INTO genres (genre) VALUES ("Gothic");
INSERT INTO genres (genre) VALUES ("Historical Fiction");
INSERT INTO genres (genre) VALUES ("Horror");
INSERT INTO genres (genre) VALUES ("Mystery");
INSERT INTO genres (genre) VALUES ("Plays");
INSERT INTO genres (genre) VALUES ("Russian Literature");
INSERT INTO genres (genre) VALUES ("Science Fiction");
INSERT INTO genres (genre) VALUES ("Time Travel");
INSERT INTO genres (genre) VALUES ("Thriller");
INSERT INTO genres (genre) VALUES ("War");

INSERT INTO titlesGenres (titleId, genreId) VALUES (1, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (1, 11);
INSERT INTO titlesGenres (titleId, genreId) VALUES (1, 6);
INSERT INTO titlesGenres (titleId, genreId) VALUES (2, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (2, 11);
INSERT INTO titlesGenres (titleId, genreId) VALUES (2, 9);
INSERT INTO titlesGenres (titleId, genreId) VALUES (2, 6);
INSERT INTO titlesGenres (titleId, genreId) VALUES (3, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (3, 10);
INSERT INTO titlesGenres (titleId, genreId) VALUES (4, 7;
INSERT INTO titlesGenres (titleId, genreId) VALUES (4, 10);
INSERT INTO titlesGenres (titleId, genreId) VALUES (4, 18);
INSERT INTO titlesGenres (titleId, genreId) VALUES (4, 14);
INSERT INTO titlesGenres (titleId, genreId) VALUES (5, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (5, 10);
INSERT INTO titlesGenres (titleId, genreId) VALUES (6, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (6, 10);
INSERT INTO titlesGenres (titleId, genreId) VALUES (6, 4);
INSERT INTO titlesGenres (titleId, genreId) VALUES (6, 13);
INSERT INTO titlesGenres (titleId, genreId) VALUES (7, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (7, 10);
INSERT INTO titlesGenres (titleId, genreId) VALUES (7, 1);
INSERT INTO titlesGenres (titleId, genreId) VALUES (7, 8);
INSERT INTO titlesGenres (titleId, genreId) VALUES (8, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (8, 12);
INSERT INTO titlesGenres (titleId, genreId) VALUES (8, 3);
INSERT INTO titlesGenres (titleId, genreId) VALUES (8, 17);
INSERT INTO titlesGenres (titleId, genreId) VALUES (9, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (9, 12);
INSERT INTO titlesGenres (titleId, genreId) VALUES (9, 15);
INSERT INTO titlesGenres (titleId, genreId) VALUES (9, 11);
INSERT INTO titlesGenres (titleId, genreId) VALUES (10, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (10, 14);
INSERT INTO titlesGenres (titleId, genreId) VALUES (10, 12);
INSERT INTO titlesGenres (titleId, genreId) VALUES (11, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (11, 12);
INSERT INTO titlesGenres (titleId, genreId) VALUES (12, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (12, 5);
INSERT INTO titlesGenres (titleId, genreId) VALUES (12, 5);
INSERT INTO titlesGenres (titleId, genreId) VALUES (13, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (13, 15);
INSERT INTO titlesGenres (titleId, genreId) VALUES (13, 5);
INSERT INTO titlesGenres (titleId, genreId) VALUES (14, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (14, 15);
INSERT INTO titlesGenres (titleId, genreId) VALUES (14, 16);
INSERT INTO titlesGenres (titleId, genreId) VALUES (15, 7);
INSERT INTO titlesGenres (titleId, genreId) VALUES (15, 10);
INSERT INTO titlesGenres (titleId, genreId) VALUES (15, 12);

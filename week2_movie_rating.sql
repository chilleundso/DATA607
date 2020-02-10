-- Create user for external access by R, granting all privileges
CREATE USER 'rlogin'@'localhost' IDENTIFIED BY '<removed>';
ALTER USER 'rlogin'@'localhost'
IDENTIFIED WITH mysql_native_password BY '<removed>';
GRANT ALL PRIVILEGES ON * . * TO 'rlogin'@'localhost';
FLUSH PRIVILEGES;

DROP TABLE IF EXISTS week2_movies.movie_ratings;

-- Create table
CREATE TABLE week2_movies.movie_ratings (
    movie varchar(255)  not null,
    rating int not null,
    reviewer_name varchar(255) not null
);

-- Add values to table
INSERT INTO week2_movies.movie_ratings (movie, rating, reviewer_name)
VALUES
	('Joker',4,'John'),
	('The Irishman',5,'John'),
	('Parasite',3,'John'),
	('Jojo Rabbit',3,'John'),
	('1917',2,'John'),
	('Little Women',5,'John'),
	('Joker',3,'Carl'),
	('The Irishman',4,'Carl'),
	('Parasite',5,'Carl'),
	('Jojo Rabbit',2,'Carl'),
	('1917',4,'Carl'),
	('Little Women',3,'Allie'),
	('Joker',4,'Allie'),
	('The Irishman',4,'Allie'),
	('Parasite',5,'Allie'),
	('Jojo Rabbit',4,'Allie'),
	('1917',3,'Allie'),
	('Little Women',3,'Maria'),
	('Joker',5,'Maria'),
	('The Irishman',3,'Maria'),
	('Parasite',4,'Maria'),
	('Jojo Rabbit',4,'Maria'),
	('1917',3,'Maria'),
	('Little Women',4,'Harriet'),
	('Joker',4,'Harriet'),
	('The Irishman',4,'Harriet'),
	('Parasite',5,'Harriet'),
	('Jojo Rabbit',3,'Harriet'),
	('1917',1,'Harriet'),
	('Little Women',5,'Harriet');
    
SELECT * FROM week2_movies.movie_ratings;
use employees;

SHOW tables;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

use codeup_test_db;

ALTER TABLE albums
ADD UNIQUE (name, artist);

DESCRIBE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3,'Pop');
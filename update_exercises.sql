use codeup_test_db;

SELECT * from albums;

UPDATE albums
SET sales = sales * 10;
SELECT * from albums;

UPDATE albums
SET  release_date = release_date - 100;
SELECT release_date from albums;

SELECT * from albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * from albums WHERE artist = 'Peter Jackson';

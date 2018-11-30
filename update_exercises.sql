use codeup_test_db;

SELECT * from albums;
UPDATE albums
SET sales = sales * 10;
SELECT * from albums;

SELECT * from albums WHERE release_date < 1980;
UPDATE albums
SET  release_date = 1800;
SELECT * from albums WHERE release_date = 1800;

SELECT * from albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * from albums WHERE artist = 'Peter Jackson';

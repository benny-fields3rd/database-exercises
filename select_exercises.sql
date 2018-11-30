USE codeup_test_db;

SELECT 'All Pink Floyd:' AS 'All Pink Floyd';
SELECT name from albums WHERE artist = 'Pink Floyd';

SELECT 'Year Sgt. Pepper\'s Lonely Heart Club Band was released:';
SELECT release_date from albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT 'Genre for Nevermind:';
SELECT genre from albums where name = 'Nevermind';

SELECT 'All albums released in the 1990\'s:';
SELECT * from albums where release_date BETWEEN 1990 AND 1999;

SELECT 'Albums that sold less than 20 million certified:';
SELECT * from albums where sales < 20;

SELECT 'All albums with Rock genre:';
SELECT * from albums where genre = 'Rock';


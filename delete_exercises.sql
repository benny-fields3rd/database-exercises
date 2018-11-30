use codeup_test_db;

SELECT 'albums released after 1991:';
DELETE * from albums WHERE release_date > 1991;

SELECT 'albums with Disco genre';
DELETE * from albums WHERE genre = 'Disco';

SELECT 'albums with Whitney Houston';
DELETE * from albums WHERE artist = 'Whitney Houston';
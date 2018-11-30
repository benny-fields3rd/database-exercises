USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                      artist VARCHAR(250) DEFAULT 'NONE' NOT NULL,
                      name  VARCHAR(250) NOT NULL,
                      release_date  INT,
                      sales  FLOAT,
                      genre VARCHAR(250)
);
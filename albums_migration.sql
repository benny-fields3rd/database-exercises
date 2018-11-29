USE codeup_test_db;

DROP TABLE IF EXISTS album;

CREATE TABLE quotes (
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      author_first_name VARCHAR(500) DEFAULT 'NONE',
                      author_last_name  VARCHAR(100) NOT NULL,
                      content TEXT NOT NULL,
                      PRIMARY KEY (id)
);
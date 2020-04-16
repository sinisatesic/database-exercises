
USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'NONE',
    name VARCHAR(100) NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(500) NOT NULL,
    PRIMARY KEY (id)
);
ALTER TABLE albums

ADD UNIQUE (name, artist);
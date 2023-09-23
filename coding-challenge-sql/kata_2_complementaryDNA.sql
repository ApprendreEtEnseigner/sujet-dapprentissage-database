

CREATE DATABASE complementary_dna;

USE complementary_dna;

CREATE TABLE dnastrand(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dna VARCHAR(100) 
);

INSERT INTO dnastrand(dna)
VALUES ('ATTGC');

SELECT  REPLACE(REPLACE(REPLACE(REPLACE(dna, 'A', 'X'), 'T', 'Y'), 'C', 'Z'), 'G', 'W') FROM dnastrand;


SELECT  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(dna, 'A', 'X'), 'T', 'Y'), 'C', 'Z'), 'G', 'W'), 'X', 'T'), 'Y', 'A'), 'Z', 'G'), 'W', 'C') as res FROM dnastrand;

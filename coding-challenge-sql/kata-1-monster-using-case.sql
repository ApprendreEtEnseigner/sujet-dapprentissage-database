
CREATE DATABASE IF EXISTS monsters;

DROP TABLE IF EXISTS top_half;
-- TABLE top_left
CREATE TABLE top_half (
    id INTEGER PRIMARY KEY,
    heads INTEGER,
    arms INTEGER
);

INSERT INTO top_half (id, heads, arms)
VALUES (1, 2, 4),
       (2, 3, 6),
       (3, 1, 2),
       (4, 2, 2),
        (5, 3, 1);


DROP TABLE IF EXISTS bottom_half;
-- TABLE bottom_left
CREATE TABLE bottom_half (
    id INTEGER PRIMARY KEY,
    legs INTEGER,
    tails INTEGER
);

INSERT INTO bottom_half (id, legs, tails)
VALUES (1, 2, 1),
       (2, 4, 2),
       (3, 6, 3),
       (4, 2, 1),
        (5, 4, 5);


DROP TABLE IF EXISTS out_put;

-- TABLE output
CREATE TABLE out_put(
    id INTEGER PRIMARY KEY ,
    heads INTEGER,
     legs INTEGER,
     arms INTEGER,
     tails INTEGER,
     species VARCHAR(10)
);

--* remplir la table output avec les données des tables top_half et bottom_half. 

SELECT t.id, t.heads, b.legs, t.arms, b.tails,
    CASE
        WHEN t.heads > t.arms AND b.tails > b.legs THEN 'BEAST'
        ELSE 'WEIRDO'
    END AS species
FROM top_half t
INNER JOIN bottom_half b 
ON t.id = b.id
ORDER BY species ASC;


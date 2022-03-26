/*markdown
## Predicate
*/

/*markdown
### LIKE
*/

CREATE TABLE like_sample (
  string VARCHAR(6) NOT NULL,
  PRIMARY KEY(string)
);

BEGIN TRANSACTION;
INSERT INTO like_sample (string) VALUES ('abcddd');
INSERT INTO like_sample (string) VALUES ('dddabc');
INSERT INTO like_sample (string) VALUES ('abdddc');
INSERT INTO like_sample (string) VALUES ('abcdd');
INSERT INTO like_sample (string) VALUES ('ddabc');
INSERT INTO like_sample (string) VALUES ('abddc');
COMMIT;

/*markdown
#### LIKE (Prefix Match)
*/

SELECT *
FROM like_sample
WHERE string LIKE 'ddd%';

/*markdown
#### LIKE (Intermediate Match)
*/

SELECT *
FROM like_sample
WHERE string LIKE '%ddd%';

/*markdown
#### LIKE (Suffix Match)
*/

SELECT *
FROM like_sample
WHERE string LIKE '%ddd';

SELECT *
FROM like_sample
WHERE string LIKE 'abc__';

/*markdown
### BETWEEN
*/

SELECT name, sale_price
FROM shouhin
WHERE sale_price BETWEEN 100 and 1000;

/*markdown
### IS NULL / IS NOT NULL
*/

SELECT name, stocking_price
FROM shouhin
WHERE stocking_price IS NULL;

SELECT name, stocking_price
FROM shouhin
WHERE stocking_price IS NOT NULL;

/*markdown
### IN
*/

SELECT name, stocking_price
FROM shouhin
WHERE stocking_price IN (320, 500, 5000);

SELECT name, stocking_price
FROM shouhin
WHERE stocking_price NOT IN (320, 500, 5000);
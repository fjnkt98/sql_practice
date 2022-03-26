/*markdown
## Various functions
*/

/*markdown
### Arithmetric Function
*/

/*markdown
#### Prepare table for practice
*/

CREATE TABLE math_sample (m NUMERIC (10, 3), n INTEGER, p INTEGER);

INSERT INTO math_sample (m, n, p) VALUES (500, 0, NULL);
INSERT INTO math_sample (m, n, p) VALUES (-180, 0, NULL);
INSERT INTO math_sample (m, n, p) VALUES (NULL, NULL, NULL);
INSERT INTO math_sample (m, n, p) VALUES (NULL, 7, 3);
INSERT INTO math_sample (m, n, p) VALUES (NULL, 5, 2);
INSERT INTO math_sample (m, n, p) VALUES (NULL, 4, NULL);
INSERT INTO math_sample (m, n, p) VALUES (8, NULL, 3);
INSERT INTO math_sample (m, n, p) VALUES (2.27, 1, NULL);
INSERT INTO math_sample (m, n, p) VALUES (5.555, 2, NULL);
INSERT INTO math_sample (m, n, p) VALUES (NULL, 1, NULL);
INSERT INTO math_sample (m, n, p) VALUES (8.76, NULL, NULL);

/*markdown
#### ABS() function
*/

SELECT m, ABS(m) AS abs_col
FROM math_sample;

/*markdown
#### MOD() function
*/

SELECT n, p, MOD(n, p)
FROM math_sample;

/*markdown
#### ROUND() function
*/

SELECT m, n, ROUND(m, n)
FROM math_sample;

/*markdown
### String function
*/

/*markdown
#### Prepare table for practice
*/

CREATE TABLE string_sample (str1 VARCHAR(40), str2 VARCHAR(40), str3 VARCHAR(40) );

BEGIN TRANSACTION;
INSERT INTO string_sample (str1, str2, str3) VALUES ('あいう', 'えお', NULL);
INSERT INTO string_sample (str1, str2, str3) VALUES ('abc', 'def', NULL);
INSERT INTO string_sample (str1, str2, str3) VALUES ('山田', '太郎', 'です');
INSERT INTO string_sample (str1, str2, str3) VALUES ('aaa', NULL, NULL);
INSERT INTO string_sample (str1, str2, str3) VALUES (NULL, 'あああ', NULL);
INSERT INTO string_sample (str1, str2, str3) VALUES ('@!#$%', NULL, NULL);
INSERT INTO string_sample (str1, str2, str3) VALUES ('ABC', NULL, NULL);
INSERT INTO string_sample (str1, str2, str3) VALUES ('aBC', NULL, NULL);
INSERT INTO string_sample (str1, str2, str3) VALUES ('abc太郎', 'abc', 'ABC');
INSERT INTO string_sample (str1, str2, str3) VALUES ('abcdefabc', 'abc', 'ABC');
INSERT INTO string_sample (str1, str2, str3) VALUES ('ミックマック', 'ッ', 'っ');
COMMIT;

/*markdown
#### Concatenate operator
*/

SELECT str1, str2, str1 || str2 AS concat_string
FROM string_sample;

/*markdown
#### LENGTH() function
*/

SELECT str1, LENGTH(str1)
FROM string_sample;

/*markdown
#### LOWER() function and UPPER() function
*/

SELECT str1, LOWER(str1), UPPER(str1)
FROM string_sample;

/*markdown
#### REPLACE() function
*/

SELECT str1, str2, str3, REPLACE(str1, str2, str3)
FROM string_sample;

/*markdown
#### SUBSTRING() function
*/

SELECT str1, SUBSTRING(str1 FROM 3 FOR 2)
FROM string_sample;
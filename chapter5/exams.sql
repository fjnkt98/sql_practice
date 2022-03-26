/*markdown
## Chapter 5 Exams
*/

/*markdown
### 5.1
*/

CREATE VIEW ViewRenshu5_1 AS
SELECT name AS shohin_mei, sale_price AS hanbai_tanka, registered AS torokubi
FROM shouhin
WHERE sale_price >= 1000 AND registered = '2009-9-20';

SELECT * FROM ViewRenshu5_1;

/*markdown
### 5.3
*/

SELECT id, name, category, sale_price, (SELECT AVG(sale_price) FROM shouhin)
FROM shouhin;

/*markdown
### 5.4
*/

SELECT id, name, category, sale_price, (SELECT AVG(sale_price) FROM shouhin AS S2 WHERE S1.category = S2.category)
FROM shouhin AS S1;
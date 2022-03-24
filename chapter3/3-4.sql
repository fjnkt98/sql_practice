/*markdown
## 3-4 Sort the search result
*/

/*markdown
### Sort rows by using ORDER BY keyword
*/

SELECT id, name, sale_price, stocking_price
FROM shouhin
ORDER BY sale_price;

/*markdown
### Specify ascending or descending order
*/

SELECT id, name, sale_price, stocking_price
FROM shouhin
ORDER BY sale_price DESC;

/*markdown
### Specify multiple keys for sort
*/

SELECT id, name, sale_price, stocking_price
FROM shouhin
ORDER BY sale_price, id;

/*markdown
### Use alias of column name in ORDER BY keyword
*/

SELECT id AS "Item ID", name AS "Item Name", sale_price AS "ht", stocking_price
FROM shouhin
ORDER BY ht, "Item ID";

/*markdown
### Use aggregate function in ORDER BY keyword
*/

SELECT category, COUNT(*)
FROM shouhin
GROUP BY category
ORDER BY COUNT(*);
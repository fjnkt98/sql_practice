/*markdown
## Sub Query
*/

/*markdown
### Use sub query
*/

SELECT item_category, shouhin_count
FROM (
  SELECT category as item_category, count(*) as shouhin_count
  FROM shouhin
  GROUP BY category
) AS shouhin_sum;

/*markdown
### Scalar sub query
*/

SELECT id, name, sale_price
FROM shouhin
WHERE sale_price > (
  SELECT AVG(sale_price)
  FROM shouhin
);

/*markdown
### Scalar sub query in HAVING keyword
*/

SELECT category, AVG(sale_price)
FROM shouhin
GROUP BY category
HAVING AVG(sale_price) > (
  SELECT AVG(sale_price)
  FROM shouhin
);
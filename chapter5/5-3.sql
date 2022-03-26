/*markdown
## Correlation sub query
*/

SELECT category, name, sale_price
FROM shouhin AS S1
WHERE sale_price > (
  SELECT AVG(sale_price)
  FROM shouhin AS S2
  WHERE S1.category = S2.category
  GROUP BY category
);
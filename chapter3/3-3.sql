/*markdown
## 3-3 Grouping with some conditions
*/

/*markdown
### Select groups which has 2 rows from group aggregated by item category
*/

SELECT category, COUNT(*)
FROM shouhin
GROUP BY category
HAVING COUNT(*) = 2;

/*markdown
### Example of HAVING keyword
*/

SELECT category, AVG(sale_price)
FROM shouhin
GROUP BY category
HAVING AVG(sale_price) >= 2500;
/*markdown
## Chapter 3 Exams
*/

/*markdown
### 3.2
*/

SELECT category, SUM(sale_price) as "Sum of sale price", SUM(stocking_price) AS "Sum of stocking price"
FROM shouhin
GROUP BY category
HAVING SUM(sale_price) > 1.5 * SUM(stocking_price);
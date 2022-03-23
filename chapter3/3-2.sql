/*markdown
## 3-2 Grouping table
*/

/*markdown
### Grouping with the item category
*/

SELECT category, COUNT(*)
FROM shouhin
GROUP BY category;

/*markdown
### Count by stocking price
*/

SELECT stocking_price, COUNT(*)
FROM shouhin
GROUP BY stocking_price;

/*markdown
### Use WHERE and GROUP BY at same time
*/

SELECT stocking_price, COUNT(*)
FROM shouhin
WHERE category = 'cloth'
GROUP BY stocking_price;
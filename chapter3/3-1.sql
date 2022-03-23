/*markdown
## 3-1 Aggregate Functions
*/

/*markdown
### Count all rows
*/

SELECT COUNT(*)
FROM shouhin;

/*markdown
### Count rows excluding NULL
*/

/*markdown

*/

/*markdown

*/

/*markdown

*/

SELECT COUNT(stocking_price)
FROM shouhin;

/*markdown
### Calculate SUM
*/

SELECT SUM(sale_price)
FROM shouhin;

/*markdown
### Calculate sum of stocking price and sale price
*/

SELECT SUM(sale_price) as "Sum of sale price", SUM(stocking_price) as "Sum of stocking price"
FROM shouhin;

/*markdown
### Calculate average
*/

SELECT AVG(sale_price)
FROM shouhin;

/*markdown
### Calculate average of sale price and stocking price
*/

SELECT AVG(sale_price) AS "Ave. of sale price", AVG(stocking_price) AS "Ave. of stocking price"
FROM shouhin;

/*markdown
### Get maximum and minimum value
*/

SELECT MAX(sale_price), MIN(stocking_price)
FROM shouhin;

/*markdown
### GET maximum date and minimum date
*/

SELECT MAX(registered), MIN(registered)
FROM shouhin;

/*markdown
### Count rows excluding duplication
*/

SELECT COUNT(DISTINCT category)
FROM shouhin;

/*markdown
### Wrong statement for DISTINCT keyword with aggregate functions
*/

SELECT DISTINCT COUNT(category)
FROM shouhin;
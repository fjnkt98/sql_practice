/*markdown
## View
*/

/*markdown
### Create view
*/

CREATE VIEW shouhin_sum (item_category, shouhin_count)
AS SELECT category, COUNT(*)
   FROM shouhin
   GROUP BY category;

/*markdown
### Use view as a table
*/

SELECT * FROM shouhin_sum;

/*markdown
### Create view from other view
*/

CREATE VIEW shouhin_sum_stationary (item_category, shouhin_count)
AS SELECT item_category, shouhin_count
   FROM shouhin_sum
   WHERE item_category = 'stationary';

SELECT * FROM shouhin_sum_stationary;

/*markdown
### Delete view
*/

DROP VIEW shouhin_sum CASCADE;
/*markdown
## Update data in dababase
*/

CREATE TABLE shouhin_update (
  item_id CHAR(4) NOT NULL,
  item_name VARCHAR(100) NOT NULL,
  item_category VARCHAR(32) NOT NULL,
  sale_price INTEGER,
  stocking_price INTEGER,
  registered_date DATE,
  PRIMARY KEY(item_id)
);

INSERT INTO shouhin_update
SELECT id, name, category, sale_price, stocking_price, registered
FROM shouhin;

SELECT * FROM shouhin_update;

/*markdown
### Update all rows registered_date field
*/

UPDATE shouhin_update
SET registered_date = '2009-10-10';

SELECT * FROM shouhin_update;

/*markdown
### Update specified row field
*/

UPDATE shouhin_update
SET sale_price = sale_price * 10
WHERE item_category = 'utensil';

SELECT * FROM shouhin_update;

/*markdown
### Update multiple field
*/

UPDATE shouhin_update
SET sale_price = sale_price * 10,
    stocking_price = stocking_price / 2
WHERE item_category = 'utensil';

SELECT * FROM shouhin_update;
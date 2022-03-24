/*markdown
## Delete data from database
*/

CREATE TABLE shouhin_delete (
  item_id CHAR(4) NOT NULL,
  item_name VARCHAR(100) NOT NULL,
  item_category VARCHAR(32) NOT NULL,
  sale_price INTEGER,
  stocking_price INTEGER,
  registered_date DATE,
  PRIMARY KEY(item_id)
);

INSERT INTO shouhin_delete
SELECT id, name, category, sale_price, stocking_price, registered
FROM shouhin;

/*markdown
### Delete rows whose sale_price value is greater than or equals 4000
*/

DELETE FROM shouhin_delete
WHERE sale_price >= 4000;

SELECT * FROM shouhin_delete;
/*markdown
## Register data in the database
*/

/*markdown
### Create new table for practice of data insertion
*/

CREATE TABLE shouhin_ins (
  item_id char(4) NOT NULL,
  item_name varchar(100) NOT NULL,
  item_category varchar(32) NOT NULL,
  sale_price INTEGER DEFAULT 0,
  stocking_price INTEGER,
  registered_date DATE,
  PRIMARY KEY (item_id)
);

/*markdown
### Insert a row into the table
*/

INSERT INTO shouhin_ins (item_id, item_name, item_category, sale_price, stocking_price, registered_date) VALUES ('0001', 'T-Shirt', 'cloth', 1000, 500, '2009-09-20');

/*markdown
### Omit colum list
*/

INSERT INTO shouhin_ins VALUES ('0005', 'PreassureCooker', 'utensil', 6800, 5000, '2009-01-15');

/*markdown
### Insert a row contains default value
*/

INSERT INTO shouhin_ins (item_id, item_name, item_category, sale_price, stocking_price, registered_date) VALUES ('0007', 'Grater', 'utensil', DEFAULT, 790, '2009-04-28');

/*markdown
### Copy some data from other table
*/

CREATE TABLE shouhin_copy (
  item_id CHAR(4) NOT NULL,
  item_name VARCHAR(100) NOT NULL,
  item_category VARCHAR(32) NOT NULL,
  sale_price INTEGER,
  stocking_price INTEGER,
  registered_date DATE,
  PRIMARY KEY(item_id)
);

INSERT INTO shouhin_copy (item_id, item_name, item_category, sale_price, stocking_price, registered_date)
SELECT id, name, category, sale_price, stocking_price, registered
FROM shouhin;

/*markdown
### Create new table with existing data group
*/

CREATE TABLE shouhin_category (
  item_category VARCHAR(32) NOT NULL,
  sum_sale_price INTEGER,
  sum_stocking_price INTEGER,
  PRIMARY KEY(item_category)
);

INSERT  INTO shouhin_category
SELECT category, SUM(sale_price), SUM(stocking_price)
FROM shouhin
GROUP BY category;

SELECT * FROM shouhin_category;
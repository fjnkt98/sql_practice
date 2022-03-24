/*markdown
## Chapter 4 Exams
*/

/*markdown
4.2
*/

CREATE TABLE shouhin_exam (
  item_id CHAR(4) NOT NULL,
  item_name VARCHAR(100) NOT NULL,
  item_category VARCHAR(32) NOT NULL,
  sale_price INTEGER,
  stocking_price INTEGER,
  registered_date DATE,
  PRIMARY KEY(item_id)
);

INSERT INTO shouhin_exam (item_id, item_name, item_category, sale_price, stocking_price, registered_date) VALUES ('0001', 'T-shirt', 'cloth', 1000, 500, '2009-09-20');
INSERT INTO shouhin_exam (item_id, item_name, item_category, sale_price, stocking_price, registered_date) VALUES ('0002', 'Hole Punch', 'stationary', 500, 320, '2009-09-11');
INSERT INTO shouhin_exam (item_id, item_name, item_category, sale_price, stocking_price, registered_date) VALUES ('0003', 'White Shirt', 'cloth', 4000, 2800, NULL);

INSERT INTO shouhin_exam
SELECT * FROM shouhin_exam;

/*markdown
### 4.3
*/

CREATE TABLE shouhin_diff (
  item_id CHAR(4) NOT NULL,
  item_name VARCHAR(100) NOT NULL,
  item_category VARCHAR(32) NOT NULL,
  sale_price INTEGER,
  stocking_price INTEGER,
  gross_profit INTEGER,
  PRIMARY KEY(item_id)
);

INSERT INTO shouhin_diff
SELECT item_id, item_name, item_category, sale_price, stocking_price, sale_price - stocking_price FROM shouhin_exam;

SELECT * FROM shouhin_diff;

/*markdown
### 4.4
*/

BEGIN TRANSACTION;
  UPDATE shouhin_diff
  SET sale_price = sale_price - 1000
  WHERE item_name = 'White Shirt';

  UPDATE shouhin_diff
  SET gross_profit = sale_price - stocking_price;
COMMIT;

SELECT * FROM shouhin_diff;
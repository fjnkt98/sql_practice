/*markdown
## Set Operation for Table
*/

CREATE TABLE shouhin2 (
  item_id CHAR(4) NOT NULL,
  item_name VARCHAR(100) NOT NULL,
  item_category VARCHAR(32) NOT NULL,
  sale_price INTEGER,
  stocking_price INTEGER,
  registered_date DATE,
  PRIMARY KEY (item_id)
);

BEGIN TRANSACTION;
INSERT INTO shouhin2 VALUES ('0001', 'T-Shirt', 'cloth', 1000, 500, '2008-09-20');
INSERT INTO shouhin2 VALUES ('0002', 'Hole Punch', 'stationary', 500, 320, '2009-09-11');
INSERT INTO shouhin2 VALUES ('0003', 'White Shirt', 'cloth', 4000, 2800, NULL);
INSERT INTO shouhin2 VALUES ('0004', 'Grove', 'cloth', 800, 500, NULL);
INSERT INTO shouhin2 VALUES ('0005', 'Pot', 'utensil', 2000, 1700, '2009-09-20');
COMMIT;

/*markdown
### UNION
*/

SELECT id, name FROM shouhin
UNION
SELECT item_id, item_name FROM shouhin2;
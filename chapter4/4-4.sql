/*markdown
## Transaction
*/

/*markdown
### Transaction that update some rows
*/

BEGIN TRANSACTION;
  UPDATE shouhin_update
  SET  sale_price = sale_price - 1000
  WHERE item_name = 'White shirt';

  UPDATE shouhin_update
  SET sale_price = sale_price + 1000
  WHERE item_name = 'T-shirt';
COMMIT;
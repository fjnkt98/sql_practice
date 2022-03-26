/*markdown
## CASE Expression
*/

SELECT name,
  CASE WHEN category = 'cloth' THEN 'A: ' || category
       WHEN category = 'stationary' THEN 'B: ' || category
       WHEN category = 'utensil' THEN 'C: ' || category
       ELSE NULL
  END AS abc_category
FROM shouhin;
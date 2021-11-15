BEGIN TRANSACTION;
  INSERT INTO shouhin VALUES (
    '0001',
    'T-shirt',
    'cloth',
    1000,
    500,
    '2009-09-20'
  );
  INSERT INTO shouhin VALUES (
    '0002',
    'Hole punch',
    'stationary',
    500,
    320,
    '2009-09-11'
  );
  INSERT INTO shouhin VALUES (
    '0003',
    'White shirt',
    'cloth',
    4000,
    2800,
    NULL
  );
  INSERT INTO shouhin VALUES (
    '0004',
    'Knife',
    'utensil',
    3000,
    2800,
    '2009-09-20'
  );
  INSERT INTO shouhin VALUES (
    '0005',
    'Preassure cooker',
    'utensil',
    6800,
    5000,
    '2009-09-20'
  );
  INSERT INTO shouhin VALUES (
    '0006',
    'Fork',
    'utensil',
    500,
    NULL,
    '2009-09-20'
  );
  INSERT INTO shouhin VALUES (
    '0007',
    'Grater',
    'utensil',
    880,
    790,
    '2008-04-28'
  );
  INSERT INTO shouhin VALUES (
    '0008',
    'Ballpoint pen',
    'stationary',
    100,
    NULL,
    '2009-11-11'
  );

COMMIT;

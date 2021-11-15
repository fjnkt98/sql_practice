CREATE TABLE shouhin (
  id              CHAR(4)       NOT NULL,
  name            VARCHAR(100)  NOT NULL,
  category        VARCHAR(32)   NOT NULL,
  sale_price      INTEGER,
  stocking_price  INTEGER,
  registered      DATE,
  primary key (id)
);

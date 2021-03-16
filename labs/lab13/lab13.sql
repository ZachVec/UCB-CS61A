.read data.sql


CREATE TABLE average_prices AS
  SELECT category, AVG(MSRP) as average_price
  FROM products
  GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price)
  FROM inventory
  GROUP BY item;


CREATE TABLE costs AS
  SELECT category, name, min(MSRP / rating)
  FROM products
  GROUP BY category;


CREATE TABLE shopping_list AS
  SELECT a.name AS name, b.store AS store
  FROM costs AS a, lowest_prices AS b 
  WHERE a.name = b.item;


CREATE TABLE total_bandwidth AS
  SELECT sum(a.Mbs)
  FROM stores AS a, shopping_list AS b
  WHERE a.store=b.store;


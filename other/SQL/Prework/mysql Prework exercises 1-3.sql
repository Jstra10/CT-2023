CREATE TABLE IF NOT EXISTS customers(
Cust_id INT,
cust_name VARCHAR(50),
address VARCHAR(200)
);

INSERT INTO customers
VALUES(
12,
"Ron_Burgundy",
"LA_California"
);

INSERT INTO customers
VALUES(
15,
"Mos_Def",
"New_York"
);

INSERT INTO customers
VALUES(
7,
"Don_Trump",
"Washington_DC"
);

SELECT * FROM customers;

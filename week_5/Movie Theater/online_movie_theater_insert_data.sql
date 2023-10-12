--Insert data in Customer Table
INSERT INTO customer
VALUES(
    1234,
	'Joe',
	'Smith',
	35
);
INSERT INTO customer
VALUES(
    4321,
	'jill',
	'Smitherson',
	21
);
INSERT INTO customer
VALUES(
    2345,
	'Dill',
	'Pickelson',
	21
);
--Insert data in Movies Table
INSERT INTO movies
VALUES(
	1,
	'Joe Dirt'
);
INSERT INTO movies
VALUES(
	2,
	'UP'
);
--Insert Data in Warhouse Table
INSERT INTO warehouse
VALUES(
	2000,
	'UP Ticket'
);
INSERT INTO warehouse
VALUES(
	1000,
	'Joe Dirt Ticket'
);
INSERT INTO warehouse
VALUES(
	5000,
	'Pop Corn'
);
INSERT INTO warehouse
VALUES(
	6000,
	'Soda'
);

INSERT INTO warehouse
VALUES(
	7000,
	'Skittles'
);

--Insert Data in Concessions Table
INSERT INTO concessions
VALUES(
	2,
	'2023-10-11',
	'Pop',
	1,
	45,
	51.35,
	6000
);
INSERT INTO concessions
VALUES(
	2,
	'2023-10-11',
	'Skittles',
	1,
	55,
	61.35,
	7000
);
INSERT INTO concessions
VALUES(
	3,
	'2023-10-11',
	'Pop Corn',
	1,
	100,
	125.32,
	5000
);

--Insert Data in Ticket Table
INSERT INTO ticket
VALUES(
	2,
	'4321',
	'2',
	2000
	
);
INSERT INTO ticket
VALUES(
	1,
	'1234',
	'1',
	1000
	
);

--Insert Data in Online Cart Table
INSERT INTO online_cart
VALUES(
	1,
	'2023-10-11',
	'Joe Dirt Ticket',
	10,
	189.31,
	235.37,
	1,
	1000
);
INSERT INTO online_cart
VALUES(
	2, 
	'2023-10-11',
	'UP Ticket',
	8,
	289.31,
	335.37,
	2,
	2000
);

--Foreign keys were not established when the table was created
ALTER TABLE accounting
ADD FOREIGN KEY (concession_order_id) REFERENCES concessions(concession_order_id);
ALTER TABLE accounting
ADD FOREIGN KEY (online_order_id) REFERENCES online_cart(online_order_id);

--Insert Data in Account Table
INSERT INTO accounting
VALUES(
	187,
	1,
	1
);
INSERT INTO accounting
VALUES(
	247,
	2,
	2
);

--Dropped upc column from ticket table due to redundancy
ALTER TABLE ticket
DROP upc;

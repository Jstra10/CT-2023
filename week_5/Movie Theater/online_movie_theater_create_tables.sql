--Customer Table Creation
CREATE TABLE IF NOT EXISTs customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	age INTEGER
);
--Movies Table Creation
CREATE TABLE IF NOT EXISTS movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(150)
);
--Warehouse Table Creation
CREATE TABLE IF NOT EXISTS warehouse(
	upc SERIAL PRIMARY KEY,
	product_name VARCHAR(150)
);
--Concessions Table Creation
CREATE TABLE IF NOT EXISTS concessions(
	concession_order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	product_name VARCHAR(150),
	quantity INTEGER,
	sub_total NUMERIC(5,2),
	total NUMERIC(5,2),
	upc INTEGER NOT NULL,
	FOREIGN KEY(upc) REFERENCES warehouse(upc)
);
--Ticket Table Creation
CREATE TABLE IF NOT EXISTS ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id	INTEGER,
	movie_id INTEGER,
	upc INTEGER,
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
	FOREIGN KEY(upc) REFERENCES warehouse(upc)
);
--Online Cart Table Creation
CREATE TABLE IF NOT EXISTS online_cart(
	online_order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	product_name VARCHAR(150),
	quantity INTEGER,
	sub_total NUMERIC(5,2),
	total NUMERIC(5,2),
	ticket_id INTEGER,
	upc INTEGER NOT NULL,
	FOREIGN KEY(upc) REFERENCES warehouse(upc),
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);
--Accounting Table Creation
CREATE TABLE IF NOT EXISTS accounting(
	accounting_id SERIAL PRIMARY KEY,
	concession_order_id INTEGER,
	online_order_id INTEGER
);
# from dotenv import load_dotenv
# from os import getenv
# import psycopg2

load_dotenv()

user = getenv("USER")
password = getenv("PASSWORD")
server = getenv("SERVER")

pg_connection = psycopg2.connect(
    dbname=user,
    user=user,
    password=password,
    host=server
)

cur = pg_connection.cursor()

def read_sql_file(fpath:str):
    ''' Open a SQL file, read it, and return it to us in the function'''
    with open(fpath, 'r') as f:
        sql_file = f.read()
    return sql_file

def create_tables(sql_filepath:str):
    start = read_sql_file(sql_filepath)
    tables = start.split(';')
    for table in tables:
        try:
            print(table)
            cur.execute(table)
            pg_connection.commit()
        except psycopg2.ProgrammingError as msg:
            print(f'Command Skipped: {msg}')

def insert_data(sql_filepath):
    start = read_sql_file(sql_filepath)
    commands = start.split(';')
    for command in commands:
        try:
            print(command)
            cur.execute(command)
            pg_connection.commit()
        except psycopg2.ProgrammingError as msg:
            print(f'Command Skipped: {msg}')
if __name__ == '__main__':
    create_tables(r'C:\Users\Alex Lucchesi\bonfire_124_sql_day_1\bonfire-129-pstgrs\amazon_mock_create.sql')
    insert_data(r'C:\Users\Alex Lucchesi\bonfire_124_sql_day_1\bonfire-129-pstgrs\amazon_mock_insert.sql')




"""
    CREATE TABLE IF NOT EXISTS customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    address VARCHAR(150),
    billing_info VARCHAR(100)
);

-- Brand Table Creation
CREATE TABLE IF NOT EXISTS brand(
    seller_id SERIAL PRIMARY KEY,
    brand_name VARCHAR(150),
    contact_number VARCHAR(15),
    address VARCHAR(150)
);

-- Inventory Table Creation
CREATE TABLE IF NOT EXISTS inventory(
    upc SERIAL PRIMARY KEY,
    product_amount INTEGER
);


-- Product Table Creation
CREATE TABLE IF NOT EXISTS product(
    item_id SERIAL PRIMARY KEY,
    amount NUMERIC(5,2),
    prod_name VARCHAR(100),
    upc INTEGER NOT NULL,
    seller_id INTEGER NOT NULL,
    FOREIGN KEY(seller_id) REFERENCES brand(seller_id),
    FOREIGN KEY(upc) REFERENCES inventory(upc)
);

-- Orders Table Creation
CREATE TABLE IF NOT EXISTS orders(
    order_id SERIAL PRIMARY KEY,
    order_date DATE DEFAULT CURRENT_DATE,
    sub_total NUMERIC(8,2),
    total_cost NUMERIC(10,2),
    upc INTEGER NOT NULL,
    FOREIGN KEY(upc) REFERENCES inventory(upc)
);

-- Cart Table Creation 
CREATE TABLE IF NOT EXISTS cart(
    cart_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(order_id) REFERENCES orders(order_id)
);
"""

"""-- INSERT INTO >table_name<(>columns we are adding data to<)VALUES(>values to add<)
INSERT INTO customer
VALUES(
    2,
    'Joel',
    'Carter',
    '555 Circle Dr Chicago, IL 60614',
    '4242-4242-4242-4242 623 10/10'
);

-- Insert statement for brand data
INSERT INTO brand(
    seller_id,
    brand_name,
    contact_number,
    address
)VALUES(
    1,
    'Coding Temple',
    '773-555-4490',
    '222 W Ontario St Chicago, IL'
);

-- Insert statement for inventory data
INSERT INTO inventory
VALUES(
    1,
    20.00
);

-- Insert statement for the product table
INSERT INTO product
VALUES(
    1,
    20.00,
    'Python 101',
    1,
    1
);

-- Insert statement for the orders table
INSERT INTO orders(
    order_id,
    sub_total,
    total_cost,
    upc
)
VALUES(
    1,
    40.00,
    43.35,
    1
);


-- Insert statment for the cart table
INSERT INTO cart
VALUES(
    1,
    1,
    1
);
"""

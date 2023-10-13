-- Customer Table Creation
CREATE TABLE customer(
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone CHAR(15),
    address VARCHAR(150)
);

CREATE TABLE employee_code(
    code_id VARCHAR(150) PRIMARY KEY,
    location VARCHAR(50) 
);

-- Employee Table Creation
CREATE TABLE employee(
	employee_id INTEGER PRIMARY KEY,
    employee_name VARCHAR(150),
    code_id VARCHAR(150),
    FOREIGN KEY (code_id) REFERENCES employee_code(code_id)
);

-- Sale Type Table Creation
CREATE TABLE sale_type(
	sale_type_id INTEGER PRIMARY KEY,
    location VARCHAR(150)
);

-- Inventory Table Creation
CREATE TABLE inventory(
	inventory_id INTEGER PRIMARY KEY,
    name VARCHAR(150)
);

-- Service Table Creation
CREATE TABLE service(
    service_id INTEGER PRIMARY KEY,
    vin_number VARCHAR(17),
    sale_type_id INTEGER,
    inventory_id INTEGER,
    service_type VARCHAR(150),
    FOREIGN KEY (sale_type_id) REFERENCES sale_type(sale_type_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

-- Part Table Creation
CREATE TABLE part(
	part_id INTEGER PRIMARY KEY,
    part_name VARCHAR(150),
    employee_id INTEGER,
    inventory_id INTEGER,
    sale_type_id INTEGER,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
    FOREIGN KEY (sale_type_id) REFERENCES sale_type(sale_type_id)
);

-- Register Table Creation
CREATE TABLE register(
    invoice_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    sale_type_id INTEGER,
    sub_total NUMERIC(10,2),
    total NUMERIC(10,2),
    vin_number VARCHAR(17),
    employee_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (sale_type_id) REFERENCES sale_type(sale_type_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
-- Auto Table Creation
CREATE TABLE auto(
    auto_id INTEGER PRIMARY KEY,
    vin_number VARCHAR(17),
    employee_id INTEGER,
    inventory_id INTEGER,
    sale_type_id INTEGER,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id),
    FOREIGN KEY (sale_type_id) REFERENCES sale_type(sale_type_id)
);






-- Procedure for Inserting a New Customer
DELIMITER //
-- Takes 5 input variables per the set variable restrictions:
CREATE PROCEDURE insertacustomer(
	IN p_customer_id INTEGER,
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50),
    IN p_phone CHAR(15),
    IN p_address VARCHAR(150)
)
-- Updates the customer table storing the input variables to the table
BEGIN
    INSERT INTO customer (customer_id, first_name, last_name, phone, address)
    VALUES (p_customer_id, p_first_name, p_last_name, p_phone, p_address);
END //

COMMIT;

-- Inserted new customer with CALL PROCEDURE
CALL insertacustomer(881,'Sydnae','Stratton', '937-555-5556','123 Main St');
CALL insertacustomer(781,'james','stratton', '937-555-5555','123 Main St');


-- Procedure for Inserting a New Employee
DELIMITER //
-- Takes 3 input variables per the set variable restrictions:
CREATE PROCEDURE insertnewemployee(
	IN p_employee_id INTEGER,
    IN p_employee_name VARCHAR(150),
    IN p_code_id VARCHAR(150)
)
-- Updates the employee table storing the input variables to the table
BEGIN
    INSERT INTO employee (employee_id, employee_name, code_id)
    VALUES (p_employee_id, p_employee_name, p_code_id);
END //

COMMIT;

-- Inserted new employee with CALL PROCEDURE
CALL insertnewemployee(19, 'Don Trump', 'sale')




INSERT INTO customer (customer_id, first_name, last_name, phone, address) 
VALUES
(1, 'Alice', 'Johnson', '555-111-2222', '123 Elm St'),
(2, 'Bob', 'Smith', '666-333-4444', '456 Maple Ave'),
(3, 'Charlie', 'Williams', '777-555-6666', '789 Oak Ln'),
(4, 'David', 'Miller', '888-777-8888', '321 Birch St'),
(5, 'Eva', 'Davis', '999-999-0000', '654 Pine Ave'),
(6, 'Frank', 'Anderson', '111-222-3333', '987 Cedar Ln'),
(7, 'Grace', 'Thomas', '222-444-5555', '543 Redwood St'),
(8, 'Henry', 'Garcia', '333-666-7777', '876 Walnut Ave'),
(9, 'Ivy', 'Moore', '444-888-9999', '234 Chestnut Ln'),
(10, 'Jack', 'Clark', '555-000-1111', '765 Spruce St');

INSERT INTO employee_code (code_id, location) 
VALUES
('auto', 'auto'),
('sale', 'sale'),
('service', 'service');

INSERT INTO sale_type (sale_type_id, location) 
VALUES
(1, 'auto'),
(2, 'sales'),
(3, 'service');

INSERT INTO employee (employee_id, employee_name, code_id) 
VALUES
(1, 'John Auto1', 'auto'),
(2, 'Jane Auto2', 'auto'),
(3, 'Bob Auto3', 'auto'),
(4, 'Alice Auto4', 'auto'),
(5, 'Charlie Auto5', 'auto');

INSERT INTO employee (employee_id, employee_name, code_id) 
VALUES
(10, 'Eva Sales1', 'sale'),
(6, 'Frank Sales2', 'sale'),
(7, 'Grace Sales3', 'sale'),
(8, 'Henry Sales4', 'sale'),
(9, 'Ivy Sales5', 'sale');

INSERT INTO employee (employee_id, employee_name, code_id) 
VALUES
(11, 'David Service1', 'service'),
(12, 'Charlie Service2', 'service'),
(23, 'Eva Service3', 'service'),
(44, 'Jack Service4', 'service'),
(32, 'Ivy Service5', 'service');

INSERT INTO inventory (inventory_id, name)
VALUES
  (1, 'Chevy Camaro'),
  (2, 'Toyota Tundra'),
  (3, 'Ford F150'),
  (4, 'Ford Mustang'),
  (5, 'Bently Phantom'),
  (6, 'Mazda'),
  (7, 'Honda Accord'),
  (8, 'Honda Civic'),
  (9, 'Honda Ridgline'),
  (10, 'Chevy 3500');
  
INSERT INTO inventory (inventory_id, name)
VALUES
  (11, 'Engine Part A'),
  (12, 'Engine Part B'),
  (13, 'Transmission Part A'),
  (14, 'Transmission Part B'),
  (15, 'Brake System Part A'),
  (16, 'Brake System Part B'),
  (17, 'Suspension Part A'),
  (18, 'Suspension Part B'),
  (19, 'Tire Part A'),
  (20, 'Tire Part B'),
  (21, 'Exhaust System Part A'),
  (22, 'Exhaust System Part B'),
  (23, 'Interior Part A'),
  (24, 'Interior Part B'),
  (25, 'Electrical System Part A');

INSERT INTO inventory (inventory_id, name)
VALUES
  (26, 'Oil Change Service'),
  (27, 'Brake Inspection Service'),
  (28, 'Tire Rotation Service'),
  (29, 'Engine Tune-Up Service'),
  (30, 'Transmission Fluid Change Service');
  
INSERT INTO auto (auto_id, vin_number, employee_id, inventory_id, sale_type_id)
VALUES
  (1, 'ABC12345678901234', 6, 1, 2),
  (2, 'DEF23456789012345', 7, 2, 1),
  (3, 'GHI34567890123456', 8, 3, 3),
  (4, 'JKL45678901234567', 9, 4, 2),
  (5, 'MNO56789012345678', 10, 5, 1),
  (6, 'PQR67890123456789', 6, 6, 3),
  (7, 'STU78901234567890', 7, 7, 2),
  (8, 'VWX89012345678901', 8, 8, 1),
  (9, 'YZA90123456789012', 9, 9, 3),
  (10, 'BCD01234567890123', 10, 10, 1);

INSERT INTO part (part_id, part_name, employee_id, inventory_id, sale_type_id)
VALUES
  (1, 'Engine Oil Filter', 1, 1, 1),
  (2, 'Brake Pads', 2, 2, 2),
  (3, 'Air Filter', 3, 3, 3),
  (4, 'Spark Plugs', 4, 4, 1),
  (5, 'Transmission Fluid', 5, 5, 2),
  (6, 'Battery', 6, 6, 3),
  (7, 'Wiper Blades', 7, 7, 1),
  (8, 'Tire Pressure Gauge', 8, 8, 2),
  (9, 'Alternator', 9, 9, 3),
  (10, 'Cabin Air Filter', 10, 10, 1),
  (11, 'Brake Fluid', 1, 6, 3),
  (12, 'Power Steering Fluid', 2, 7, 2),
  (13, 'Wheel Bearings', 3, 8, 1),
  (14, 'Fuel Pump', 4, 9, 3),
  (15, 'Radiator Hose', 5, 10, 1),
  (16, 'Oxygen Sensor', 6, 1, 2),
  (17, 'Timing Belt', 7, 2, 1),
  (18, 'Thermostat', 8, 3, 3),
  (19, 'Starter Motor', 9, 4, 2),
  (20, 'Radiator Cap', 10, 5, 1),
  (21, 'CV Joint', 1, 6, 3),
  (22, 'Ignition Coil', 2, 7, 2),
  (23, 'Serpentine Belt', 3, 8, 1),
  (24, 'Shock Absorber', 4, 9, 3),
  (25, 'Fuel Filter', 5, 10, 1);

INSERT INTO service(service_id, vin_number, sale_type_id, inventory_id, service_type)
VALUES
  (1, 'ABC12345678901234', 1, 1, 'Oil Change'),
  (2, 'DEF23456789012345', 2, 2, 'Brake Inspection'),
  (3, 'GHI34567890123456', 3, 3, 'Air Filter Replacement'),
  (4, 'JKL45678901234567', 1, 4, 'Spark Plug Replacement'),
  (5, 'MNO56789012345678', 2, 5, 'Transmission Service'),
  (6, 'PQR67890123456789', 3, 6, 'Battery Replacement'),
  (7, 'STU78901234567890', 1, 7, 'Wiper Blade Replacement'),
  (8, 'VWX89012345678901', 2, 8, 'Tire Rotation'),
  (9, 'YZA90123456789012', 3, 9, 'Alternator Inspection'),
  (10, 'BCD01234567890123', 1, 10, 'Cabin Air Filter Replacement'),
  (11, 'EFG12345678901234', 2, 1, 'Brake Fluid Flush'),
  (12, 'HIJ23456789012345', 3, 2, 'Power Steering Fluid Flush'),
  (13, 'KLM34567890123456', 1, 3, 'Wheel Alignment'),
  (14, 'NOP45678901234567', 2, 4, 'Fuel System Cleaning'),
  (15, 'QRS56789012345678', 3, 5, 'Coolant Flush'),
  (16, 'TUV67890123456789', 1, 6, 'Oxygen Sensor Replacement'),
  (17, 'WXY78901234567890', 2, 7, 'Timing Belt Replacement'),
  (18, 'ZAB90123456789012', 3, 8, 'Thermostat Replacement'),
  (19, 'CDE01234567890123', 1, 9, 'Starter Motor Replacement'),
  (20, 'FGH12345678901234', 2, 10, 'Radiator Cap Replacement'),
  (21, 'IJK23456789012345', 3, 1, 'CV Joint Replacement'),
  (22, 'LMN34567890123456', 1, 2, 'Ignition Coil Replacement'),
  (23, 'OPQ45678901234567', 2, 3, 'Serpentine Belt Replacement'),
  (24, 'RST56789012345678', 3, 4, 'Shock Absorber Replacement'),
  (25, 'UVW67890123456789', 1, 5, 'Fuel Filter Replacement');





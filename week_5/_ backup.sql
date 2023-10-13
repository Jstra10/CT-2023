INSERT INTO customer (customer_id, first_name, last_name, phone, address)
VALUES
  (101, 'Eva', 'Jones', '5551112233', '432 Birch St, Suburbia'),
  (102, 'David', 'Brown', '9876541230', '876 Maple St, Countryside'),
  (103, 'Olivia', 'White', '1112223334', '543 Cedar St, Uptown'),
  (104, 'Charlie', 'Miller', '9998887776', '765 Oak St, Downtown'),
  (105, 'Sophia', 'Martin', '3334445555', '876 Pine St, Riverside'),
  (106, 'Leo', 'Harris', '1233215678', '234 Elm St, Lakeside'),
  (107, 'Ava', 'Thompson', '9876543210', '543 Birch St, Hilltop'),
  (108, 'Henry', 'Anderson', '1112223334', '765 Maple St, Parkside'),
  (109, 'Mia', 'Walker', '5554443333', '876 Cedar St, Beachfront'),
  (110, 'Ethan', 'Wright', '7778889999', '432 Pine St, Mountainside'),
  (111, 'Emma', 'Young', '3332221111', '654 Oak St, Valley'),
  (112, 'Logan', 'Ward', '5554443333', '789 Birch St, Lakeside'),
  (113, 'Isabella', 'King', '1112223334', '876 Elm St, Uptown'),
  (114, 'Carter', 'Fisher', '7778889999', '432 Cedar St, Downtown'),
  (115, 'Lily', 'Hall', '5551112233', '765 Pine St, Riverside'),
  (116, 'Jack', 'Baker', '3334445555', '876 Maple St, Countryside'),
  (117, 'Abigail', 'Cook', '1233215678', '543 Birch St, Parkside'),
  (118, 'Owen', 'Morgan', '9876543210', '765 Oak St, Hilltop'),
  (119, 'Aria', 'Grant', '1112223334', '876 Cedar St, Beachfront'),
  (120, 'Wyatt', 'Simmons', '5554443333', '432 Elm St, Mountainside'),
  (121, 'Ella', 'Ford', '7778889999', '654 Birch St, Valley'),
  (122, 'Gabriel', 'Keller', '5551112233', '876 Pine St, Suburbia'),
  (123, 'Scarlett', 'Reed', '3334445555', '543 Cedar St, Downtown'),
  (124, 'Lucas', 'Pearson', '1233215678', '432 Oak St, Riverside'),
  (125, 'Hazel', 'Lopez', '5554443333', '765 Maple St, Lakeside');
  
  
INSERT INTO employee_code (code_id, code_value)
VALUES
  (1, 'Sale Staff'),
  (2, 'Auto Staff'),
  (3, 'Service Staff');
  
  
INSERT INTO employee (employee_id, employee_name, code_id)
VALUES
  (1, 'John Smith', 1),
  (2, 'Emily Johnson', 1),
  (3, 'Michael Davis', 1),
  (4, 'Amanda Miller', 1),
  (5, 'Daniel Brown', 1);
  
INSERT INTO employee (employee_id, employee_name, code_id)
VALUES
  (6, 'Christopher Lee', 2),
  (7, 'Sophia Wilson', 2),
  (8, 'Matthew Robinson', 2),
  (9, 'Isabella Garcia', 2),
  (10, 'Andrew Taylor', 2);
  
INSERT INTO employee(employee_id, employee_name, code_id)
VALUES
  (11, 'Ethan Martinez', 3),
  (12, 'Olivia Anderson', 3),
  (13, 'Liam Harris', 3),
  (14, 'Ava Turner', 3),
  (15, 'Logan Mitchell', 3);
  
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
  
  
INSERT INTO sale_type (sale_type_id, auto, service, part)
VALUES
  (1, 'Yes', 'No', 'No'),
  (2, 'No', 'Yes', 'No'),
  (3, 'No', 'No', 'Yes');
  

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
  
INSERT INTO register (invoice_id, customer_id, sale_type_id, sub_total, total, vin_number, employee_id)
VALUES
  (1, 121, 1, 1000.00, 1200.00, 'ABC12345678901234', 1),
  (2, 122, 2, 800.00, 950.00, 'DEF23456789012345', 2),
  (3, 101, 3, 1200.00, 1500.00, 'GHI34567890123456', 3),
  (4, 101, 1, 950.00, 1100.00, 'JKL45678901234567', 4),
  (5, 112, 2, 750.00, 900.00, 'MNO56789012345678', 5),
  (6, 113, 3, 1100.00, 1300.00, 'PQR67890123456789', 6),
  (7, 118, 1, 900.00, 1050.00, 'STU78901234567890', 7),
  (8, 104, 2, 850.00, 1000.00, 'VWX89012345678901', 8),
  (9, 111, 3, 1000.00, 1200.00, 'YZA90123456789012', 9),
  (10, 110, 1, 1200.00, 1500.00, 'BCD01234567890123', 10),
  (11, 111, 2, 800.00, 950.00, 'EFG12345678901234', 1),
  (12, 123, 3, 1100.00, 1300.00, 'HIJ23456789012345', 2),
  (13, 123, 1, 950.00, 1100.00, 'KLM34567890123456', 3),
  (14, 114, 2, 750.00, 900.00, 'NOP45678901234567', 4),
  (15, 125, 3, 1000.00, 1200.00, 'QRS56789012345678', 5),
  (16, 116, 1, 1200.00, 1500.00, 'TUV67890123456789', 6),
  (17, 117, 2, 800.00, 950.00, 'WXY78901234567890', 7),
  (18, 118, 3, 1100.00, 1300.00, 'ZAB90123456789012', 8),
  (19, 120, 1, 900.00, 1050.00, 'CDE01234567890123', 9),
  (20, 120, 2, 850.00, 1000.00, 'FGH12345678901234', 10),
  (21, 102, 3, 1000.00, 1200.00, 'IJK23456789012345', 1),
  (22, 102, 1, 1200.00, 1500.00, 'LMN34567890123456', 2),
  (23, 103, 2, 800.00, 950.00, 'OPQ45678901234567', 3),
  (24, 124, 3, 1100.00, 1300.00, 'RST56789012345678', 4),
  (25, 125, 1, 950.00, 1100.00, 'UVW67890123456789', 5);


SELECT *
FROM register

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

INSERT INTO service (service_id, vin_number, sale_type_id, inventory_id, service_type)
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






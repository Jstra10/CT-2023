
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

CALL insertacustomer(881,'Sydnae','Stratton', '937-555-5556','123 Main St');
CALL insertacustomer(781,'james','stratton', '937-555-5555','123 Main St');

DROP PROCEDURE insertacustomer;


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

CALL insertnewemployee(19, 'Don Trump', 'sale');

DROP PROCEDURE
insertnewemployee;


select *
from employee;





SELECT employee.employee_name, employee_code.location
FROM employee
JOIN employee_code ON employee.code_id = employee_code.code_id;

SELECT * 
FROM register
WHERE sale_type_id = 1;

SELECT customer_id, SUM(total) as total_sales
FROM register
GROUP by customer_id;

SELECT customer.customer_id, customer.last_name, SUM(register.total) AS total_sales
FROM customer
JOIN register ON customer.customer_id = register.customer_id
GROUP BY customer.customer_id, customer.last_name
ORDER BY total_sales DESC;

SELECT
    register.invoice_id,
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    employee.employee_id,
    employee.employee_name,
    employee_code.location AS employee_location,
    register.sub_total,
    register.total,
    register.vin_number,
    sale_type.location AS sale_location
FROM
    register
JOIN customer ON register.customer_id = customer.customer_id
JOIN employee ON register.employee_id = employee.employee_id
JOIN employee_code ON employee.code_id = employee_code.code_id
JOIN sale_type ON register.sale_type_id = sale_type.sale_type_id;

SELECT
    register.*,

    customer.first_name,
    customer.last_name,
    
    employee.employee_name,
    employee_code.location AS employee_location,
    sale_type.location AS sale_location,
    SUM(register.sub_total) OVER (PARTITION BY customer.customer_id) AS total_sub_total,
    SUM(register.total) OVER (PARTITION BY customer.customer_id) AS total_sales
FROM
    register
JOIN customer ON register.customer_id = customer.customer_id
JOIN employee ON register.employee_id = employee.employee_id
JOIN employee_code ON employee.code_id = employee_code.code_id
JOIN sale_type ON register.sale_type_id = sale_type.sale_type_id;

SELECT *
FROM register
JOIN customer ON register.customer_id = customer.customer_id
JOIN employee ON register.employee_id = employee.employee_id
JOIN employee_code ON employee.code_id = employee_code.code_id
JOIN sale_type ON register.sale_type_id = sale_type.sale_type_id

ALTER TABLE service
ADD FOREIGN KEY (employee_id)
REFERENCES employee(employee_id);





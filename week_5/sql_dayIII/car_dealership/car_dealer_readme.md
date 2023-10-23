# About this database

This data base contains the transactions for a car dealership. The dealership offers 
three products. Service, Part Sales and Auto Sales. The database consists of nine tables.
The structure for querying starts at the customer level, to the register to the purchase etc.
Items tracked in this data base are standard dealership items.  Employee info, customer info, 
department info, etc. Each product the dealership offeres, has its own table for transactions.

Within the database two procedures have been created:
1. insertacustomer -  When called, takes input from the user and inserts it into the customer table. 
2. insertnewemployee - When called, takes input from the user and inserts it into the employee table.


## The Tables

The Customer Table:
Stores first and last name, phone number, and address.
Primary Key - customer_id

The Register Table:
Stores subtotal and vin number.
Primary Key - invoice_id
Foreign Keys - customer_id references the customer table
               sales_type_id references the sales table
               employee_id references the employee table

The Sales Type Table:
Stores the different types of services offered. Stored as a table allows for easy product expansion.
Table is used as a fork in the road for mutually exclusive services.  (ex. a customer does not have
to buy a car in order to get their car serviced.)
Primary Key - sale_type_id

The Service, Part and Auto Tables:
Each table is similar in data stored. Tables are independent as they are mutually exclusive from 
each other. Each table connects to the register and customer tables via the sales_type table. Their
pipline connects to the employee tables and inventory tables. 

The Employee Table:
Stores the employee information. 
Primary Key - employee_id
Foreign Key - code_id (allowing a look up of employee department) references the employee_code table.

The Employee Code Table:
Stores the department the employees can work in.
Primary Key - code_id

The Inventory Table:
Stores the tangible products the dealership offers as well as the service items offered.
Primary Key - inventory_id


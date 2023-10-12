# About this database

This database contains transaction tables for a movie theater. 
Tickets are only sold online, and require identification(first name, last name and age) 
in order to initiate purchase.
The tickets are generated and the ticket_id transferred to the online_cart table.
The online_order product name (ex. 'Joe Dirt Ticket') is obtained from the warehouse lookup table. 
The online_order is transferred to the accounting table via the online_order_id. 
The concessions table houses all items info purchased and tranfers this info to the accounting 
table via the concessions_order_id.
The concessions product_name is obtained from the warehouse lookup table.


## The Tables

The Customer Table:
Captures the first_name, last_name and age of the purchaser.
Primary Key - customer_id

The Ticket Table:
Stores customer_id and movie_id for the movie.
Primary Key - ticket_id
Foreign Key - customer_id references to the customer table
Foreign Key - movie_id references to the movie look up table

The Online Cart Table:
Stores the order_date, product_name, quantity of tickets, sub_total, total, ticket_id, and upc.
Primary Key - online_order_id
Foreign Key - ticket_id references to the ticket table
Foreign Key - upc references to the warehouse table

The Concessions Table:
Stores the same information except except ticket_id, as no ticket is required for concessions.
Primary Key - concession_order_id
Foreign Key - upc references to the warehouse

The Movies Table:
Stores the movie_name/s
Primary Key - movie_id

The Warehouse Table:
Stores the product_name
Primary Key - upc

The Accounting Table:
Allows the connection and recording of all online ticket sales and concessions sales.




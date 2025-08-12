# a script that prints the full description of the table books from the database alx_book_store in your MySQL server.
USE alx_book_store;
# print the full description of the table books
# You are not allowed to use the DESCRIBE or EXPLAIN statements
SHOW CREATE TABLE Books;
# This will show the full structure of the Books table including columns, types, and constraints.
SHOW COLUMNS FROM Books;
# This will also provide detailed information about each column in the Books table.
SELECT 
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    EXTRA
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'Books';
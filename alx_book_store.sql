# A Magical Database for Your Dream Online Bookstore Adventure!
CREATE DATABASE IF NOT EXISTS alx_book_store;
# Switch to the alx_book_store database
USE alx_book_store;
# Table for storing book details
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id VARCHAR(foreign key referencing Author table),
    price DOUBLE,
    publication_date DATE,
);
# Table for storing author details
CREATE TABLE Authors (
    author_id (Primary Key)
    author_name VARCHAR(215)
);
# Table for storing customer details
CREATE TABLE Customers (
    customer_id INT(Primary Key)
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address TEXT
);
# Table for storing orders
CREATE TABLE Orders (
    order_id INT(Primary Key)
    customer_id INT(Foreign Key referencing Customers table)
    order_date DATE
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);
# Table for storing order details
CREATE TABLE Order_Details (
    orderdetailid (Primary Key)
    order_id (Foreign Key referencing Orders table)
    book_id (Foreign Key referencing Books table)
    quantity DOUBLE
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);


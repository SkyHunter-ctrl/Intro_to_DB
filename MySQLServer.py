# Build my Database: my Gateway to Data Adventure!
import mysql.connector
from mysql.connector import Error
try:
    #connecting to my sql server
    connection = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "FanyaKazi{30}"
    )
    if connection.is_connected():
        cursor = connection.cursor()
        # create database if doesnt exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as err:
    print(f"Error: {err}")
finally:
    if 'cursor' in locals():
        cursor.close()
    if 'connection' in locals() and connection.is_connected():
        connection.close()



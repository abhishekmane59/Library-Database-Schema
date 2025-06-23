# Library-Database-Schema
SQL schema and ER diagram for Library Management System.

# 📚 Library Management System - SQL Schema

## 📌 Overview
This repository is part of my SQL Developer Internship (Task 1) and demonstrates a normalized database schema for a Library Management System using MySQL.

The objective is to practice data definition language (DDL), normalization techniques, and entity-relationship modeling.

---

## 🧱 Tables Included

- **Authors** – Stores author details.
- **Books** – Contains book records linked to authors.
- **Members** – Stores information about library members.
- **Loans** – Tracks the borrowing and returning of books by members.

---

## 🔗 Entity Relationships

- One Author can write multiple Books.  
- One Member can borrow multiple Books.  
- One Book can be borrowed many times.

---

## 📊 ER Diagram

![ER Diagram](Library ER-Daigram.pdf)

*The ER diagram above was designed using dbdiagram.io to visualize the relationships between entities.*

---

## 🧾 SQL Script

The `schema.sql` file contains all necessary DDL commands to:
- Create the database `LibraryDB`
- Define tables with appropriate data types
- Add primary and foreign key constraints
- Use `AUTO_INCREMENT` for surrogate keys
- Use default values where applicable

---

## 🧰 Tools Used

- **MySQL 9.3 Command Line Client**
- **dbdiagram.io** / **draw.io**
- **GitHub**

---

## 🧪 How to Run

1. Open the **MySQL Command Line Client**.
2. Paste the commands from `mysql create database LibraryDB.sql` or run it using:
   ```bash
   mysql -u root -p < mysql create database LibraryDB.sql


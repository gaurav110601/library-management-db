# Library Management Database

A simple SQL-based Library Management System database schema that manages authors, books, borrowers, and transactions.

---

## Project Overview

This project provides a relational database schema designed for managing a small library system. It includes tables for:

- **Authors** — storing author details.
- **Books** — storing book information linked to authors.
- **Borrowers** — storing people who borrow books.
- **Transactions** — tracking which borrower has borrowed which book and due dates.

The database supports referential integrity with foreign keys and cascading updates/deletions.

---

## Features

- Create and manage authors and their books.
- Register borrowers who can borrow books.
- Track book borrow transactions with due dates.
- Cascading delete/update for clean data management.

---

## Usage

After running the SQL script:

- The database `myLib` will be created with all tables and sample data.
- You can query the tables to retrieve information on authors, books, borrowers, and transactions.
- Modify or extend the schema as per your project requirements.

---

## Contributing

Feel free to fork this repository and submit pull requests for improvements or additional features.

---

## Contact

Created by Gaurav — [GitHub](https://github.com/gaurav110601)

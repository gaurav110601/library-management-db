--creating database 
CREATE DATABASE myLib;

--creating table authors
CREATE TABLE authors( 
    author_id INT PRIMARY KEY AUTO_INCREMENT, 
    author_name VARCHAR(255) 
);

--inserting data into table authors

-- INSERT INTO `authors`(`author_id`, `author_name`) 
-- VALUES (1,'Jane Austen'), 
-- (2,'Miguel de Cervantes'), 
-- (3,'Alexandre Dumas'), 
-- (4,'Charles Dickens'), 
-- (5,'Arthur Conan Doyle'), 
-- (6,'Victor Hugo'), 
-- (7,'Jules Verne');

INSERT INTO `authors`( `author_name`) 
VALUES ('Jane Austen'), 
('Miguel de Cervantes'), 
('Alexandre Dumas'), 
('Charles Dickens'), 
('Arthur Conan Doyle'), 
('Victor Hugo'), 
('Jules Verne');

--creating table books
CREATE TABLE books ( 
    book_id int PRIMARY KEY AUTO_INCREMENT, 
    book_name varchar(255), 
    publish_date date, 
    author_id int, 
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE CASCADE ON UPDATE CASCADE 
);

--inserting data into table books

-- INSERT INTO `books` (`book_id`, `book_name`, `publish_date`, `author_id`) 
-- VALUES(15, 'Don Quixote', '2000-01-15', 1),
-- (16, "Alice's Adventures in Wonderland", '2003-04-27', 4),
-- (18, 'The Adventures of Tom Sawyer', '1999-09-27', 2),
-- (19, 'Treasure Island', '2010-11-09', 5),
-- (20, 'Pride and Prejudice', '2007-07-20', 6),
-- (21, 'Wuthering Heights', '2017-12-27', 3);

INSERT INTO `books` (`book_name`, `publish_date`, `author_id`) 
VALUES('Don Quixote', '2000-01-15', 1),
("Alice's Adventures in Wonderland", '2003-04-27', 4),
('The Adventures of Tom Sawyer', '1999-09-27', 2),
('Treasure Island', '2010-11-09', 5),
('Pride and Prejudice', '2007-07-20', 6),
('Wuthering Heights', '2017-12-27', 3);

--creating table borrowers
CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY AUTO_INCREMENT,
    borrower_name VARCHAR(255)
);

--inserting data into borrowers
INSERT INTO `borrowers`(`borrower_name`) 
VALUES ('aman'), ('sunil'), ('ramesh'), ('karan');

--creating table transactions
CREATE TABLE transactions ( 
    transaction_id INT PRIMARY KEY AUTO_INCREMENT, 
    book_id int, 
    borrower_id int, 
    due_date date,
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY (borrower_id) REFERENCES borrowers(borrower_id) ON DELETE CASCADE ON UPDATE CASCADE
);

--inserting data into table transactions
INSERT INTO `transactions`(`book_id`, `borrower_id`, `due_date`) 
VALUES (15,2,'2020-12-30'), (18,4,'2020-06-15'), (20,3,'2020-11-12');

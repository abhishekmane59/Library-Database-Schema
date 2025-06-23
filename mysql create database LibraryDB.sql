mysql> create database LibraryDB;
Query OK, 1 row affected (0.127 sec)

mysql> create table Authors(AuthorID int auto_increment primary key, Name varchar(100) not null);
ERROR 1046 (3D000): No database selected
mysql> use LibraryDB;
Database changed
mysql>  create table Authors(AuthorID int auto_increment primary key, Name varchar(100) not null);
Query OK, 0 rows affected (0.335 sec)

mysql> create table Books(BookID int auto_increment primary key, Title varchar(250)not null, Author
    -> ^C
mysql> create table Books(BookID int auto_increment primary key, Title varchar(250)not null, AuthorID int, foreign key(AuthorID) references Authors(AuthorID));
Query OK, 0 rows affected (0.654 sec)

mysql> create table Members (MemberID int auto_increment primary key, Name varchar(100) not null, JoinDate date default current_date);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'current_date)' at line 1
mysql> create table Members (MemberID int auto_increment primary key, Name varchar(100) not null, JoinDate date default CURRENT_DATE);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CURRENT_DATE)' at line 1
mysql> create table Members (MemberID int auto_increment primary key, Name varchar(100) not null, JoinDate date);
Query OK, 0 rows affected (0.297 sec)

mysql> create table Loans(LoanID int auto_increment primary key, BookID int, MemberID int, LoanDate date not null, ReturnDate date, foreign key(BookID) references Books(BookID), foreign key(MemberID) references Members(MemberID));
Query OK, 0 rows affected (0.789 sec)

mysql> show tables;
+---------------------+
| Tables_in_librarydb |
+---------------------+
| authors             |
| books               |
| loans               |
| members             |
+---------------------+
4 rows in set (0.217 sec)

mysql> describe Authors;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| AuthorID | int          | NO   | PRI | NULL    | auto_increment |
| Name     | varchar(100) | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
2 rows in set (0.177 sec)

mysql> describe books;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| BookID   | int          | NO   | PRI | NULL    | auto_increment |
| Title    | varchar(250) | NO   |     | NULL    |                |
| AuthorID | int          | YES  | MUL | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
3 rows in set (0.044 sec)

mysql> describe books loans;
Empty set (0.051 sec)

mysql> describe members;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| MemberID | int          | NO   | PRI | NULL    | auto_increment |
| Name     | varchar(100) | NO   |     | NULL    |                |
| JoinDate | date         | YES  |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
3 rows in set (0.068 sec)

mysql> describe loans;
+------------+------+------+-----+---------+----------------+
| Field      | Type | Null | Key | Default | Extra          |
+------------+------+------+-----+---------+----------------+
| LoanID     | int  | NO   | PRI | NULL    | auto_increment |
| BookID     | int  | YES  | MUL | NULL    |                |
| MemberID   | int  | YES  | MUL | NULL    |                |
| LoanDate   | date | NO   |     | NULL    |                |
| ReturnDate | date | YES  |     | NULL    |                |
+------------+------+------+-----+---------+----------------+
5 rows in set (0.038 sec)

mysql>
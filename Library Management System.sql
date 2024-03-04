--Create Table Staff (AdminId INT Primary Key, Name nvarchar(30), Address nvarchar(50), Contact nvarchar(15), Salary Numeric(10,2));
--Create Table Book( BookID INT Primary key, Title NVARCHAR(50) NOT NULL, ISBN NVARCHAR(20) NOT NULL, Category NVARCHAR(30));
--Create Table userTable( UserID INT Primary key, Name NVARCHAR(30) NOT NULL, Address NVARCHAR(100), Contact NVARCHAR(15));
--Create Table Author( AuthorID INT Primary key, Name NVARCHAR(30), Nationality NVARCHAR(20), Biography NVARCHAR(100));
--Create Table Publisher( PublisherID INT Primary key, Name NVARCHAR(30), Address NVARCHAR(100),Contact NVARCHAR(15), WebsiteURL NVARCHAR(100));
--Create Table Copies (CopyID INT PRIMARY KEY, BookID INT, FOREIGN KEY (BookId) REFERENCES Book(BookID));
--Create Table TransactionTable(TransactionID INT PRIMARY KEY, CopyID INT, UserID INT,Borrow_Date DATE, Return_Date DATE, Foreign key (UserID) REFERENCES userTable(UserID), Foreign key (CopyID) REFERENCES Copies(CopyID));
--Create Table Review( ReviewID INT PRIMARY KEY, Review VARCHAR(100),Rating tinyint, BookID INT, UserId INT, Foreign key (BookID) References Book(BookID), Foreign key (UserID) References userTable(UserID));

--ALTER TABLE Book
--ADD CONSTRAINT UC_ISBN UNIQUE (ISBN);
--ALTER TABLE Publisher
--ADD CONSTRAINT DEF_URL DEFAULT 'None' FOR WebsiteURL;
--ALTER TABLE TransactionTable
--ADD CONSTRAINT CHK_Dates CHECK (Borrow_Date <= Return_Date);

--Inserting---

--INSERT INTO userTable (UserID, Name, Address, Contact) VALUES
--(1, 'Swechha', 'Kathmandu', '+977-9841234567'),
--(2, 'Kewang', 'Pokhara', '+977-9812345678'),
--(3, 'Yoegsh', 'Biratnagar', '+977-9863456789'),
--(4, 'Ram', 'Lalitpur', '+977-9811112233'),
--(5, 'Shyam', 'Bhaktapur', '+977-9844445566'),
--(6, 'Hari', 'Dharan', '+977-9855556677'),
--(7, 'Sita', 'Butwal', '+977-9811122334'),
--(8, 'Govinda', 'Nepalgunj', '+977-9867788999'),
--(9, 'Krishna', 'Hetauda', '+977-9809876543'),
--(10, 'Shiva', 'Dhangadhi', '+977-9843210987');

-- Inserting data into the 'Book' table
--INSERT INTO Book (BookID, Title, ISBN, Category) VALUES
--(1, 'The Alchemist', '9780061122415', 'Fiction'),
--(2, 'Sapiens: A Brief History of Humankind', '9780062316097', 'Non-Fiction'),
--(3, 'To Kill a Mockingbird', '9780061120084', 'Classic'),
--(4, 'The Great Gatsby', '9780743273565', 'Classic'),
--(5, '1984', '9780451524935', 'Dystopian'),
--(6, 'The Hobbit', '9780547928227', 'Fantasy'),
--(7, 'Pride and Prejudice', '9780143105428', 'Romance'),
--(8, 'The Catcher in the Rye', '9780241950425', 'Coming-of-Age'),
--(9, 'The Tempest', '9780307474278', 'Mystery'),
--(10, 'Evolve your brain', '9780590353427', 'Fantasy');

--INSERT INTO Book (BookID, Title, ISBN, Category) VALUES
--(11, 'Romeo and Juliet', '9780143128571', 'Tragedy'),
--(12, 'Hamlet', '9780743477123', 'Tragedy');

--ALTER TABLE Book
--ADD AuthorID INT,
--    PublisherID INT;

--ALTER TABLE Book
--ADD CONSTRAINT FK_Author FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID),
--    CONSTRAINT FK_Publisher FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)

--INSERT INTO Author (AuthorID, Name, Nationality, Biography) VALUES
--(1, 'William Shakespeare', 'English', 'Renowned playwright and poet.'),
--(2, 'J.K. Rowling', 'British', 'Best known for the Harry Potter series.');
--INSERT INTO Author (AuthorID, Name, Nationality, Biography) VALUES
--(3, 'Joe Dispenzae', 'American', 'Best selling author and researcher.');

--UPDATE Book
--SET AuthorID = 1
--WHERE BookID IN (1, 3, 4, 5, 6, 7, 8, 11, 13); 

--UPDATE Book
--SET AuthorID = 2
--WHERE BookID IN (10, 14);

--UPDATE Book
--SET AuthorID = 3
--WHERE BookID = 9;



--INSERT INTO Publisher (PublisherID, Name, Address, Contact, WebsiteURL) VALUES
--(1, 'Penguin Classics', 'London, UK', '+44-20-7946123', 'https://www.penguin.co.uk/'),
--(2, 'Bloomsbury', 'London, UK', '+44-20-7631-560', 'https://www.bloomsbury.com/'),
--(3, 'Simon & Schuster', 'California, USA','+1-212-555-1234', 'https://www.simonandschuster.com/');
--INSERT INTO Publisher (PublisherID, Name, Address, Contact) VALUES
--(4, 'New York Times', 'New York, USA', '+1-212-555-1234');
--UPDATE Book
--SET PublisherID = 1
--WHERE BookID IN (1, 3, 4, 5, 6, 7, 8, 11, 13); 

--UPDATE Book
--SET PublisherID = 2
--WHERE BookID IN (10, 14);

--UPDATE Book
--SET PublisherID = 3
--WHERE BookID = 9;

--INSERT INTO Copies (CopyID, BookID) VALUES
--(1, 1),
--(2, 1),
--(3, 2),
--(4, 3),
--(5, 4),
--(6, 5),
--(7, 6),
--(8, 7),
--(9, 8),
--(10, 9),
--(11, 10),
--(12, 11),
--(13, 12),
--(14, 12),
--(15, 12);

--INSERT INTO TransactionTable VALUES (1,3,2,'2024-01-09','');
--DELETE FROM TransactionTable where UserID =2;
 
 --INSERT INTO TransactionTable VALUES (1,3,2,'2024-02-19','2024-02-25'),
 --(2,5,3,'2024-02-19','2024-02-25'),
 --(3,1,8,'2024-02-20','2024-02-26'),
 --(4,1,6, '2024-02-21','2024-02-27'),
 --(5,7,1,'2024-02-21','2024-02-27'),
 --(6,11,10,'2024-02-21','2024-02-27');

 --Insert into Staff values (1,'Nisha', 'Dillibazar','9841123456',90000.00);

 --Insert into Review Values(1, 'Very nice and interesting book', 4, 3,2), (2,'Thoughtful and well written',5,5,3);

 --UPDATE Book SET AuthorID = 2, PublisherID = 2 Where BookID IN (2,12)


 --BEGIN Transaction
 --  INSERT INTO Book VALUES (13,'Python Basics', 98094762272234, 'Science',1,2);
 --  Delete from Book WHERE BookID = 13;
 --  COMMIT TRANSACTION;

-- Grant SELECT permission on a table to a user
--GRANT SELECT ON dbo.Book TO USER_TBL;

--SELECT *
--FROM Book
--order by AuthorID asc, BookID asc
--OFFSET 0 ROWS
--FETCH FIRST 5 ROWS ONLY;

--Select * from Staff where Salary between 80000 and 90000;
--Select * from Book where Category  LIKE '[H-M]%';
--Select * from Book where Category  NOT LIKE '[H-M]%';
--Select * from Book where Title  LIKE '1%';
--Insert into Author Values (11,'Krishna Poudel', 'Nepali','Book''s sold 30%');
--select * from Author where Biography LIKE '%30$%%' escape '$';
--insert into Staff values(5,'Tina','Kathmandu','9876345267',85000);
--select * from Staff where Salary > ANY (Select Salary from Staff where Salary in (70000, 85000));
--select * from Staff where Salary > ALL (Select Salary from Staff where Salary in (70000, 85000));
--select Name from Staff;
--select Name from Staff where Name not Between 'Aashish' and 'Nisha';
--select max(Salary) as Max_Salary, min(Salary) as Min_Salary,
--sum(Salary) as TotalSalary, Count(Distinct Salary) as Salaries,
--avg(Salary) as AverageSalary
--from Staff;

--Inner join only returns the match in both table.
--Select u.UserID, u.Name, T.TransactionID, T.Borrow_Date, T.Return_Date
--from userTable u inner join TransactionTable T on 
--u.UserID= T.UserID order by u.UserID;

--Left join returns all the rows from left and only matching from right, null for empty values in matching right rows
--Select u.UserID, u.Name, T.TransactionID, T.Borrow_Date, T.Return_Date
--from userTable u left join TransactionTable T on 
--u.UserID= T.UserID order by u.UserID;

--Select u.UserID, u.Name, T.TransactionID, T.Borrow_Date, T.Return_Date
--from   userTable u full outer join TransactionTable T  on 
--u.UserID= T.UserID order by u.UserID;

--Select u.UserID, u.Name, T.TransactionID, T.Borrow_Date, T.Return_Date
--from   userTable u right join TransactionTable T  on 
--u.UserID= T.UserID where Borrow_Date < '2024-02-20';

--update userTable set Name='Yogesh' where UserID=3;

--select count(CopyID) as TotalCopies from Copies group by BookID order by TotalCopies ;
--select * from Staff where Salary > ANY (Select Salary from Staff where Salary in (70000, 85000));
--select * from Staff where Exists (Select 1 from Staff where Salary = 80000);
--Select Salary from Staff where Salary in (60000, 70000);


--select top 10 * from Book;

--select max(Salary) as MaxAnnualSalary from Staff;

--self join on hierarchical table
--Drop table employees;
--Create table employees (employee_id int primary key, employee_name varchar(50),
-- manager_id int references employees(employee_id) 
--);


--INSERT INTO employees (employee_id, employee_name, manager_id) VALUES
--(1, 'Ron', NULL), 
--(2, 'John', 1),   
--(3, 'Hakim', 1),     
--(4, 'Nita', 2),  
--(5, 'Sita', 2),    
--(6, 'Rita', 3),      
--(7, 'Mina', 3);    

--Select e.employee_id, e.employee_name, e.manager_id,
-- m.employee_name as manager_name
--from employees e
-- JOIN employees m ON e.manager_id = m.employee_id;

--select * from Book order by BookID 
--offset 0 rows fetch next 10 rows only;

--select * from Book order by BookID 
--offset 10 rows fetch next 10 rows only;

--Nested queries
--select * from Staff where Salary > (Select avg(Salary) from Staff);
--SELECT
--    COUNT(Copies.CopyID) AS CopyCount,
--    Book.BookID, Book.Title
--FROM
--    Copies
--LEFT JOIN
--    Book ON Copies.BookID = Book.BookID
--GROUP BY
--    Book.BookID, Book.Title;

--SELECT
--    COUNT(Copies.CopyID) AS CopyCount,
--    Book.BookID,
--    Book.Title
--FROM
--    Copies
--LEFT JOIN
--    Book ON Copies.BookID = Book.BookID
--GROUP BY
--    Book.BookID, Book.Title
--HAVING
--    COUNT(Copies.CopyID) > (SELECT AVG(CopyCount) FROM (SELECT COUNT(CopyID) AS CopyCount FROM Copies GROUP BY BookID) AS Subquery);

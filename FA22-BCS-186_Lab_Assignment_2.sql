	--Name: Hammad Hafeez
	--Register Name: FA22-BCS-186
	--Section:C
	--Lab Assignment 2
	
	--Admin Table for account creation 1 to Many
	create table [admin](
			id int primary key,
			fname varchar (20) not null,
			sname varchar (20),
			gender char(1) check (gender in ('M', 'F')) not null,
			email varchar(100) not null,
			[address] varchar(100)
	);

	--Departments table
create table departments(
			id int primary key,
			department_name nvarchar(20),
			department_building varchar(8)
);

	--Teachers_account Table
	create table teacher(
			id int primary key,
			[admin] int,
			department int,
			constraint fk_admin foreign key ([admin]) references [admin](id),
			constraint fk_department foreign key(department) references departments(id),
			fname varchar (20) not null,
			sname varchar (20),
			gender char(1) check (gender in ('M', 'F')) not null,
			email varchar(100) not null,
			[address] varchar(100)			
	);

	--Students_account Table
	create table student(
			id int primary key,
			[student] int,
			department int,
			constraint fk_student_department foreign key(department) references departments(id),
			constraint fk_student foreign key ([student]) references admin(id),
			fname varchar (20) not null,
			sname varchar (20),
			gender char(1) check (gender in ('M', 'F')) not null,
			email varchar(100) not null,
			[section] varchar(100)		
	);

	--Buses table
	create table bus(
			id int primary key,
			bus_number varchar(7),
			bus_route char(1) check (bus_route in ('N','S','E','W'))
	);

	--Classroom table
	create table classrooms(
			id int primary key,
			department int,
			constraint fk_department_classroom foreign key (department) references departments(id)
	);

	--Library Table
	create table [library](
			lib_id int primary key,
			lib_name varchar(20)
	);

	--Create table books
	create table books(
	bookID int primary key,
	book_Name varchar(25) not null,
	book_xCordinate int,
	book_yCordinate int,
	book_availability varchar(50) CHECK (book_availability IN ('Available', 'Not Available')),
    CONSTRAINT check_availability CHECK (
        (book_xCordinate = 0 AND book_yCordinate = 0 AND book_availability = 'Not Available') OR
        (book_xCordinate != 0 OR book_yCordinate != 0)
    )
	);

	-- Student-Teacher assignment table
	create table student_teacher(
			StudentID int,
			TeacherID int,
			constraint fk_StudentID foreign key(StudentID) references student(id),
			constraint fk_TeacherID foreign key(TeacherID) references teacher(id),
			primary key(StudentID,TeacherID)
	);

	--Bus-Student assignment table
	create table student_buses(
	StudentID int,
	BusID int,
	constraint fk_StudentID_buses foreign key (StudentID) references student(id),
	constraint fk_BusID foreign key (BusID) references bus(id),
	primary key (StudentID,BusID)
	);

	--Student-Classroom assignment table
	create table student_classroom(
	StudentID int,
	ClassroomID int,
	constraint fk_StudentID_classroom foreign key (StudentID) references student(id),
	constraint fk_ClassroomID foreign key (ClassroomID) references classrooms(id),
	);


	-- Insert data into admin table
INSERT INTO [admin] (id, fname, sname, gender, email, [address])
VALUES 
    (1, 'Waseem', 'Akram', 'M', 'waseem.akram@example.com', '123 Main Street'),
    (2, 'Moeez', 'Ahmad', 'M', 'moeez.ahmad@example.com', '456 Elm Street'),
    (3, 'Ali', 'Khan', 'M', 'ali.khan@example.com', '789 Oak Street'),
    (4, 'Hammad', 'Hafeez', 'M', 'hammad.hafeez@example.com', '101 Pine Street'),
    (5, 'Ahmed', 'Hussain', 'M', 'ahmed.hussain@example.com', '222 Cedar Street'),
    (6, 'Sana', 'Malik', 'F', 'sana.malik@example.com', '333 Walnut Street');

-- Insert data into departments table
INSERT INTO departments (id, department_name, department_building)
VALUES 
    (1, 'Mathematics', 'Build M'),
    (2, 'Computer Science', 'Build C'),
    (3, 'Physics', 'Build P'),
    (4, 'Biology', 'Build B'),
    (5, 'Chemistry', 'Build E'),
    (6, 'Literature', 'Build F');

-- Insert data into teacher table
INSERT INTO teacher (id, [admin], department, fname, sname, gender, email, [address])
VALUES 
    (1, 1, 1, 'Michael', 'Johnson', 'M', 'michael.johnson@example.com', '789 Oak Street'),
    (2, 2, 2, 'Emily', 'Williams', 'F', 'emily.williams@example.com', '101 Pine Street'),
    (3, 3, 3, 'Ahmed', 'Ali', 'M', 'ahmed.ali@example.com', '202 Maple Street'),
    (4, 4, 4, 'Ayesha', 'Khan', 'F', 'ayesha.khan@example.com', '303 Birch Street'),
    (5, 5, 5, 'Kamran', 'Hussain', 'M', 'kamran.hussain@example.com', '404 Pine Street'),
    (6, 6, 6, 'Sadia', 'Malik', 'F', 'sadia.malik@example.com', '505 Cedar Street');

-- Insert data into student table
INSERT INTO student (id, [student], department, fname, sname, gender, email, [section])
VALUES 
    (1, 2, 1, 'Fatima', 'Khan', 'F', 'fatima.khan@example.com', 'A'),
    (2, 2, 2, 'Usman', 'Ali', 'M', 'usman.ali@example.com', 'B'),
    (3, 3, 3, 'Sara', 'Hussain', 'F', 'sara.hussain@example.com', 'C'),
    (4, 4, 4, 'Zain', 'Ahmed', 'M', 'zain.ahmed@example.com', 'D'),
    (5, 1, 5, 'Aisha', 'Malik', 'F', 'aisha.malik@example.com', 'E'),
    (6, 1, 6, 'Omar', 'Khan', 'M', 'omar.khan@example.com', 'F');

-- Insert data into bus table
INSERT INTO bus (id, bus_number, bus_route)
VALUES 
    (1, 'Bus 101','N'),
    (2, 'Bus 102','S'),
    (3, 'Bus 103','E'),
    (4, 'Bus 104','W'),
    (5, 'Bus 105','N'),
    (6, 'Bus 106','S');

-- Insert data into classrooms table
INSERT INTO classrooms (id, department)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);

-- Insert data into library table
INSERT INTO [library] (lib_id, lib_name)
VALUES 
    (1, 'Main Library'),
    (2, 'Departmental Library'),
    (3, 'Science Library'),
    (4, 'Biology Library'),
    (5, 'Chemistry Library'),
    (6, 'Literature Library');

-- Insert data into books table
INSERT INTO books (bookID, book_Name, book_xCordinate, book_yCordinate, book_availability)
VALUES 
    (1, 'Harry Potter', 0, 0, 'Not Available'),
    (2, 'Physics', 1, 1, 'Available'),
    (3, 'C++', 0, 0, 'Not Available'),
    (4, 'Intro in Java', 2, 2, 'Available'),
    (5, 'MYSQL', 0, 0, 'Not Available'),
    (6, 'JSNOTE', 3, 3, 'Available');

-- Insert data into student_teacher table
INSERT INTO student_teacher (StudentID, TeacherID)
VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (3, 4),
    (5, 5),
    (6, 6);

-- Insert data into student_buses table
INSERT INTO student_buses (StudentID, BusID)
VALUES 
    (1, 1),
    (2, 2),
    (4, 3),
    (6, 4),
    (5, 5),
    (6, 6);

-- Insert data into student_classroom table
INSERT INTO student_classroom (StudentID, ClassroomID)
VALUES 
    (1, 1),
    (2, 2),
    (2, 3),
    (3, 4),
    (5, 5),
    (3, 6);

	--Queries to show all tables

	-- Retrieve all records from the admin table:
SELECT * FROM [admin];

-- Retrieve all records from the departments table:
SELECT * FROM departments;

-- Retrieve all records from the teacher table:
SELECT * FROM teacher;

-- Retrieve all records from the student table:
SELECT * FROM student;

-- Retrieve all records from the bus table:
SELECT * FROM bus;

-- Retrieve all records from the classrooms table:
SELECT * FROM classrooms;

-- Retrieve all records from the library table:
SELECT * FROM [library];

-- Retrieve all records from the books table:
SELECT * FROM books;

-- Retrieve all records from the student_teacher table:
SELECT * FROM student_teacher;

-- Retrieve all records from the student_buses table:
SELECT * FROM student_buses;

-- Retrieve all records from the student_classroom table:
SELECT * FROM student_classroom;



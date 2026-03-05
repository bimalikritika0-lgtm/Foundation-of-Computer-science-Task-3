CREATE database kritikacoursework_db;
use kritikacoursework_db;

Create table Students(
 StudentId INT auto_increment primary KEY,
    StudentName VARCHAR(50),
    Email Varchar(255)
);

Create table Club(
ClubName Varchar(50) primary key,
ClubRoom Varchar(10),
ClubMentor Varchar(30)
);

CREATE TABLE Membership (
    StudentId INT,
    FOREIGN KEY (StudentId) REFERENCES Students(StudentId),
    Clubname varchar(50),
FOREIGN KEY (Clubname) REFERENCES Club(Clubname),
    JoinDate Varchar(50)
);

INSERT INTO Students(StudentID, StudentName, Email)
VALUES
(1, 'Asha', 'asha@email.com'),
(2, 'Bikash', 'bikash@email.com'),
(3, 'Nisha', 'nisha@email.com'),
(4, 'Rohan', 'rohan@email.com'),
(5, 'Suman', 'suman@email.com'),
(6, 'Pooja', 'pooja@email.com'),
(7, 'Aman', 'aman@email.com');

INSERT INTO Club (ClubName, ClubRoom, ClubMentor)
VALUES
('Music Club', 'R101', 'Mr. Raman'),
('Sports Club', 'R202', 'Ms. Sita'),
('Drama Club', 'R303', 'Mr. Kiran'),
('Coding Club', 'Lab1', 'Mr. Anil');

INSERT INTO Membership VALUES
(1, 'music club','2024/10/1'),
(1, 'sports club','2024/15/1'),
(2, 'sports club','2024/12/1'),
(2, 'Drama club','2024/25/1'),
(3, 'music club','2024/20/1'),
(3, 'coding club','2024/28/1'),
(4, 'drama club','2024/18/1'),
(5, 'music club','2024/22/1'),
(6, 'sports club','2024/27/1'),
(7, 'coding club','2024/30/1')



INSERT INTO Students(StudentID, StudentName, Email)
VALUES (8, 'Sneha', 'Sneha@email.com');

INSERT INTO Club (ClubName, ClubRoom, ClubMentor)
VALUES ('Youth Club', 'R404', 'Ms. Prem');

SELECT * FROM Students;
SELECT * FROM Club;

SELECT StudentName from Students;
select Clubname from Club;
select joindate from Membership;






SELECT Students.StudentID, Club.ClubName, Membership.JoinDate
FROM Membership
JOIN Students ON Membership.StudentID = Students.StudentID
JOIN Club ON Membership.ClubName = Club.ClubName;

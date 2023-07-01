create database subqry;
use subqry;

CREATE TABLE Doctors(Doctor_ID int,Doctor_name varchar(30),Specialty varchar(20),Day_Available varchar(20),Contact_No varchar(13),Experience int);

CREATE TABLE Patients(Patient_ID int,Patient_name varchar(20),Doctor_name varchar(30),Treatment_date varchar(10),Ward_no int,`Condition` varchar(20),Fees int);

CREATE TABLE Timetable(Day varchar(20),Doctor_name varchar(20),Ward_no int,Time varchar(20));

CREATE TABLE Ward(Ward_no int,Floor int,Beds int,Nurses int);

CREATE TABLE Medicines(Date varchar(10),Doctor_name varchar(30),Ward_no int,Injections int,Medicines int);

INSERT INTO Doctors VALUES(1,'Dr.Harsh','Dietician','Monday','9876543210',5);
INSERT INTO Doctors VALUES(2,'Dr.Simran','Cardiologist','Tuesday','995671866',6);
INSERT INTO Doctors VALUES(3,'Dr.Abhishek','Gynecologist','Monday','8756128765',4);
INSERT INTO Doctors VALUES(4,'Dr.Tanuja','Dietician','Tuesday','9875617286',2);
INSERT INTO Doctors VALUES(1,'Dr.Vedant','Cardiologist','Monday','678195278',10);
INSERT INTO Doctors VALUES(5,'Dr.Sanika','Gynecologist','Monday','9876524516',2);
INSERT INTO Doctors VALUES(6,'Dr.Nitish','Neurologist','Saturday','7651862542',4);
INSERT INTO Doctors VALUES(7,'Dr.Sanskriti','Dietician','Tuesday','9876545678',5);
INSERT INTO Doctors VALUES(8,'Dr.Pranali','Gynecologist','Monday','7689018765',6);
INSERT INTO Doctors VALUES(9,'Dr.Paavana','Dietician','Sunday','6789156278',10);
INSERT INTO Doctors VALUES(10,'Dr.Devang','Cardiologist','Monday','18976254187',10);
INSERT INTO Doctors VALUES(11,'Dr.Rutuja','Dietician','Wednesday','18726578976',5);
INSERT INTO Doctors VALUES(12,'Dr.Gayatri','Neurologist','Sunday','98735678176',6);
INSERT INTO Doctors VALUES(13,'Dr.Amar','Dietician','Thursday','7890876543',5);
INSERT INTO Doctors VALUES(14,'Dr.Aditya','Cardiologist','Friday','6789098765',4);
INSERT INTO Doctors VALUES(15,'Dr.Salil','Dietician','Tuesday','9872456789',2);
INSERT INTO Doctors VALUES(16,'Dr.Prajwal','Gynecologist','Saturday','9865435671',6);
INSERT INTO Doctors VALUES(17,'Dr.Sami','Cardiologist','Friday','9876543245',5);
INSERT INTO Doctors VALUES(18,'Dr.Sakshi','Neurologist','Wednesday','9876547892',5);
INSERT INTO Doctors VALUES(19,'Dr.Aadinath','Gynecologist','Thursday','9875672897',10);

INSERT INTO Patients VALUES(1,'shruti','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(2,'rahul','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(3,'rohit','Dr.Abhishek','01-02-22',2,'Intermediate',400);
INSERT INTO Patients VALUES(4,'raj','Dr.Tanuja','01-02-22',3,'Good',200);
INSERT INTO Patients VALUES(5,'roshan','Dr.Simran','01-02-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(6,'nupur','Dr.Harsh','02-02-22',1,'Bad',100);
INSERT INTO Patients VALUES(7,'sahil','Dr.Abhishek','02-02-22',2,'Better',600);
INSERT INTO Patients VALUES(8,'shreya','Dr.Vedant','02-02-22',5,'Good',200);
INSERT INTO Patients VALUES(9,'tanvi','Dr.Tanuja','03-02-22',3,'Bad',500);
INSERT INTO Patients VALUES(10,'dipti','Dr.Simran','03-02-22',1,'Intermediate',400);
INSERT INTO Patients VALUES(11,'snehal','Dr.Abhishek','03-02-22',2,'Better',100);
INSERT INTO Patients VALUES(12,'abhijit','Dr.Simran','04-02-22',1,'Good',200);
INSERT INTO Patients VALUES(13,'anam','Dr.Vedant','04-02-22',5,'Bad',500);
INSERT INTO Patients VALUES(14,'sanyukta','Dr.Simran','04-02-22',1,'Intermediate',500);
INSERT INTO Patients VALUES(15,'smruti','Dr.Simran','01-03-22',1,'Good',600);
INSERT INTO Patients VALUES(16,'siddhesh','Dr.Abhishek','01-03-22',2,'Good',200);
INSERT INTO Patients VALUES(17,'krutik', 'Dr.Vedant','01-03-22',5,'Bad',500);
INSERT INTO Patients VALUES(18,'jay','Dr.Tanuja','02-03-22',3,'Good',500);
INSERT INTO Patients VALUES(19,'jayant','Dr.Simran','02-03-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(20,'vineet','Dr.Vedant','01-04-22',5,'Better',400);
INSERT INTO Patients VALUES(21,'riddhi','Dr.Abhishek','01-04-22',2,'Bad',200);
INSERT INTO Patients VALUES(22,'vishaka','Dr.Harsh','02-05-22',4,'Good',100);
INSERT INTO Patients VALUES(23,'sarthak','Dr.Simran','02-05-22',1,'Good',400);
INSERT INTO Patients VALUES(24,'yash','Dr.Vedant','02-04-22',5,'Better',500);
INSERT INTO Patients VALUES(25,'suraj','Dr.Sanika','04-05-22',6,'Good',200);
INSERT INTO Timetable VALUES('Monday','Dr.Harsh',4,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Simran',1,'10am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Rutuja',7,'11am');
INSERT INTO Timetable VALUES('Thursday','Dr.Amar',8,'1pm');
INSERT INTO Timetable VALUES('Friday','Dr.Aditya',9,'3pm');
INSERT INTO Timetable VALUES('Saturday','Dr.Prajwal',10,'11am');
INSERT INTO Timetable VALUES('Sunday','Dr.Paavana',11,'4pm');
INSERT INTO Timetable VALUES('Monday','Dr.Sanika',6,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Tanuja',3,'4am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Sakshi',12,'10pm');
INSERT INTO Timetable VALUES('Thursday','Dr.Aadinath',13,'8am');


INSERT INTO Ward VALUES(1,1,10,3);
INSERT INTO Ward VALUES(2,1,12,4);
INSERT INTO Ward VALUES(3,1,13,3);
INSERT INTO Ward VALUES(4,1,10,3);
INSERT INTO Ward VALUES(5,2,9,2);
INSERT INTO Ward VALUES(6,2,8,3);
INSERT INTO Ward VALUES(7,2,10,4);
INSERT INTO Ward VALUES(8,2,9,3);
INSERT INTO Ward VALUES(9,3,13,2);
INSERT INTO Ward VALUES(10,3,10,3);
INSERT INTO Ward VALUES(11,3,13,2);
INSERT INTO Ward VALUES(12,4,10,3);
INSERT INTO Ward VALUES(13,4,9,4);

INSERT INTO Medicines VALUES('01-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-02-22','Dr.Harsh',4,30,50);
INSERT INTO Medicines VALUES('01-02-22','Dr.Vedant',5,10,30);
INSERT INTO Medicines VALUES('02-02-22','Dr.Abhishek',2,20,40);
INSERT INTO Medicines VALUES('02-02-22','Dr.Tanuja',3,40,60);
INSERT INTO Medicines VALUES('02-02-22','Dr.Sanika',6,10,35);
INSERT INTO Medicines VALUES('02-02-22','Dr.Rutuja',7,34,67);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('03-02-22','Dr.Harsh',4,15,43);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-03-22','Dr.Vedant',5,12,24);
INSERT INTO Medicines VALUES('01-03-22','Dr.Simran',1,23,34);
INSERT INTO Medicines VALUES('01-03-22','Dr.Abhishek',2,33,45);
INSERT INTO Medicines VALUES('02-03-22','Dr.Harsh',4,22,43);
INSERT INTO Medicines VALUES('02-03-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Vedant',5,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Tanuja',3,22,45);

-- Q1. Display patient names recommending Dr.Simran.

select Patient_name
from Patients
where Doctor_name="Dr.Simran";

-- Q2. Display number of patients treated by the same doctor and in the same ward.

select count(Patient_name), Doctor_name, Ward_no
from Patients
group by Doctor_name,Ward_no;

-- Q3. Display the average fees taken by each Doctor.

select Doctor_name, round(avg(Fees)) as `AVERAGE Fees`
from Patients
group by Doctor_name
order by (Doctor_name) asc;

-- Q4. Which specialist has used the maximum number of injections on date ‘01-02-22’?

select Specialty,MAX(Injections)
from Doctors,Medicines
WHERE Doctors.Doctor_name=Medicines.Doctor_name and Medicines.Date = "01-02-22"
group by Specialty,Injections
order by Specialty asc;

-- Q5. How many nurses were present on Wednesday with Dr.Rutuja?

Select Ward.Nurses,Timetable.Doctor_name
FROM Timetable,Ward
WHERE Timetable.Ward_no=Ward.Ward_no and Timetable.Day="Wednesday" and 
Timetable.doctor_name IN(Select Doctor_Name FROM Timetable WHERE Doctor_name = "Dr.Rutuja");

-- Q6. At what time is Dr.Rutuja available on Wednesday? 

select Doctor_name,	Time
from Timetable
where Day="Wednesday" and Doctor_name="Dr.Rutuja";

-- Q7. Count of patients with good condition treated by each doctor?

Select Doctor_name, count(Patient_name) as Count
from Patients
where `Condition`='Good'
group by Doctor_name;

-- Q8. Wards on which floor has used the minimum number of medicines on date ‘02-02-22’?

select Ward.Floor, Medicines.Medicines
from Ward, Medicines
WHERE Ward.Ward_no = Medicines.Ward_no and Medicines.Medicines IN (select MIN(Medicines) FROM Medicines where Date="02-02-22");

-- OR

SELECT Ward.Floor, MIN(Medicines) AS Total_Medicines
FROM Medicines
JOIN Ward ON Medicines.Ward_no = Ward.Ward_no
WHERE Date = '02-02-22'
GROUP BY Ward.Floor
ORDER BY Total_Medicines ASC
LIMIT 1;

-- Q9. Display ward no. having minimum number of beds.

SELECT Ward_no, MIN(Beds) As Beds
from Ward
GROUP BY Ward_no
ORDER BY MIN(Beds) ASC
LIMIT 1;

-- Q10. Display total experience of doctors with specialty as ‘Cardiologist’.

SELECT Specialty, SUM(EXPERIENCE) as `total experience`
from Doctors
WHERE Specialty='Cardiologist'
GROUP BY Specialty;

-- Q11. Display Doctor names and their corresponding floors.

Select Doctor_name, Ward.Floor
from Timetable
JOIN Ward
ON Timetable.Ward_no=Ward.Ward_no
group by Timetable.Doctor_name, Ward.Floor;

-- Q12. Display average Number of beds on each floor.

SELECT Floor, floor(AVG(Beds))
from Ward
group by floor;

-- Q13. Display Doctor names and their ward numbers from Patients and Timetable.

Select Doctor_name, Ward_no
from Patients
UNION 
select Doctor_name, Ward_no
from Timetable;

-- Q14. Display count of patients treated on each day.

Select Treatment_date, count(Patient_name)
from Patients
group by Treatment_date;

-- Q15. Display count of patients from each condition type.

Select `Condition`, Count(Patient_name)
from Patients
group by `Condition`;

-- Q16. Display the total number of injections and medicines used by each doctor for doctor having doctor id greater than 3?

SELECT 
    Doctor_name, COUNT(Injections)+Count(Medicines) As 'Total Injection + Medicine'
FROM
    Medicines
WHERE Doctor_name IN
    (SELECT 
            Doctor_name
        FROM
            Doctors
        WHERE
            Doctor_ID > 3)
       
group by Doctor_name;  

-- Q17. Display the medicines consumed on each day starting from most to least.

Select Date, SUM(Medicines)
from Medicines
group by date
Order by Count(Medicines) Desc;

-- Q18. Which ward has treated the most number of patients who went in good condition?

Select Ward_no,Count(Patient_name) AS `Went in good condition` 
from Patients
where `Condition`='good'
group by Ward_no;

-- Q19. Give the doctor specialities available at 10am. 

Select Specialty,Timetable.Time
from Doctors
JOIN Timetable
ON Doctors.Doctor_name=Timetable.Doctor_name
where Timetable.Time='10am'
group by Specialty;

-- Q20. Display the number of nurses using more than 20 injections in each ward.

Select Ward.Ward_no, Ward.Nurses as `No. of nurses`, Medicines.Injections as `Total Injection`
from Ward
JOIN Medicines
ON Ward.Ward_no = Medicines.Ward_no and Medicines.Injections IN (Select Medicines.Injections from Medicines where Injections>20)
group by Ward.Ward_no, Ward.Nurses, Medicines.Injections;

-- Q21. Display number of patients treated by doctors having more than 3 years of experience in each ward.

Select Patients.Ward_no, Count(Patients.Patient_name) as P_Count,Doctors.Experience
From Patients
JOIN Doctors
ON Patients.Doctor_name=Doctors.Doctor_name and Doctors.Experience IN (Select Experience from Doctors where Experience>3)
group by Patients.Ward_no,Doctors.Experience;

-- Q22. Display the contact nos. each patient should contact in case of further assistance.

select Patient_name,Contact_No
from Patients,Doctors
where Patients.Doctor_name=Doctors.Doctor_name
group by Patient_name,Contact_No;

-- Q23. How many doctors are available at each time of the day?

Select time,Count(Doctor_name) as Doctor_available 
from Timetable
group by time;

-- Q24. Display Doctor_ID and names treating patients having 's' as their initial.

Select Doctors.Doctor_ID, Doctors.Doctor_name, Patients.Patient_name
from Doctors
JOIN Patients
ON Doctors.Doctor_name=Patients.Doctor_name and Patients.Patient_name IN (Select Patient_name from Patients where Patient_name like 's%');

-- Q25. Which doctor can see a patient if Dr. Simran is not available?

Select Day, Doctor_name
from Timetable
WHERE NOT Doctor_name= 'Dr.Simran' and Day IN (Select Day from Timetable where Doctor_name = 'Dr.Simran');

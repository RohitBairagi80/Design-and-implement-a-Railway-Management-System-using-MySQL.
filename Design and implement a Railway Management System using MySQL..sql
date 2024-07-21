CREATE DATABASE RailwayDB;
USE RailwayDB;

# Create Table Train
CREATE TABLE Train(TrainID int ,TainName varchar(25),SourceStation varchar(25), DestinationStation varchar(25),TotalSeats int);

#Insert values into table Train
INSERT INTO Train(TrainID,TainName,SourceStation,DestinationStation,TotalSeats)
VALUES
(2344,'Darjeeling Mail','Delhi','Pune',1500),
(2145,'Teesta Torsa Mail','Manipur','Badli',1200),
(1154,'Kamrup Express','Subzi Mandi','Panipat JN',2100),
(4152,'Havda Mail','Surat','Igatpuri',1600),
(2344,'Darjeeling Mail','Sonipat','Delhi',1700);

INSERT INTO Train(TrainID,TainName,SourceStation,DestinationStation,TotalSeats) 
VALUES
(9852,'SuparFast Mail','Nagar','Manmad',1300),
(1564,'Goa Mail','Kajgaon','Jamner',2500),
(7152,'Fast Express','Mandi','Goa',2800),
(5632,'Great Mail','Mumbai','Igatpuri',1200),
(5624,'Dax Mail','Sonipat','kalyan',1900);

# change column name TainName to TrainName
ALTER TABLE Train RENAME COLUMN TainName TO TrainName;

#show table
SELECT * FROM Train;

#create table Station
CREATE TABLE stations(StationID int,StationName varchar(25),Location varchar(25));

#insert into Stations values
INSERT INTO Stations(StationID ,StationName,Location) 
VALUES
(1,'DLI','Delhi'),
(2,'SZM','Subzi Mandi'),
(3,'BHD','Badli'),
(4,'NUR','Narela'),
(5,'SNP','Sonipat'),
(6,'GNU','Ganaur'),
(7,'SMK','Samalkha'),
(8,'PNP','Panipat JN'),
(9,'MU','Mumbai'),
(10,'MND','Manmad');

#show table Stations
SELECT * FROM Stations;

# create table Schedules 
CREATE TABLE Schedules(scheduleID int,TrainID int,DepartureTime time,ArrivalTime time,Date date);

#insert into table Schedule
INSERT INTO Schedules (scheduleID, TrainID, DepartureTime, ArrivalTime, Date)
VALUES
(11, 2344, '02:00:00', '03:15:00', '2024-07-19'),
(12, 2145, '02:10:56', '04:15:00', '2024-07-19'),
(13, 1154, '01:10:56', '05:15:00', '2024-07-20'),
(14, 4152, '03:40:56', '05:15:00', '2024-07-19'),
(15, 2344, '05:15:56', '06:15:00', '2024-07-19'),
(16, 1154, '08:10:56', '14:15:00', '2024-07-19');

#insert into table Schedule
INSERT INTO Schedules(scheduleID, TrainID, DepartureTime, ArrivalTime, Date)
VALUES
(17, 9852, '02:00:00', '03:15:00', '2024-07-19'),
(18, 1564, '02:10:56', '04:15:00', '2024-07-19'),
(19, 7152, '01:10:56', '05:15:00', '2024-07-20'),
(20, 5632, '03:40:56', '05:15:00', '2024-07-19');

#show table schedule
SELECT * FROM schedules;

#create table passengers
CREATE TABLE Passengers(PassengersID varchar(5),FirstName varchar(10),LastName varchar(10),DateOfBirth Date,Gender varchar(10))

#insert data into table passengers
INSERT INTO Passengers (PassengersID, FirstName, LastName, DateOfBirth, Gender)
VALUES
('P001', 'John', 'Doe', '1985-04-23', 'Male'),
('P002', 'Jane', 'Smith', '1990-06-17', 'Female'),
('P003', 'Michael', 'Brown', '1978-08-09', 'Male'),
('P004', 'Emily', 'Davis', '1995-12-11', 'Female'),
('P005', 'David', 'Wilson', '1983-02-15', 'Male'),
('P006', 'Sophia', 'Martinez', '1992-11-30', 'Female'),
('P007', 'James', 'Garcia', '1987-05-20', 'Male'),
('P008', 'Olivia', 'Miller', '1999-09-25', 'Female'),
('P009', 'William', 'Jones', '1975-01-10', 'Male'),
('P010', 'Ava', 'Taylor', '2000-03-05', 'Female');

#show table data
SELECT * FROM Passengers;

#create table Booking 
CREATE TABLE Booking(BookingID int, PassengerID varchar(10),ScheduleID int,SeatNumber varchar(20),BookingDate Date);

#insert into table values
INSERT INTO Booking (BookingID, PassengerID, ScheduleID, SeatNumber, BookingDate)
VALUES
(1, 'P001', 11, 'A1', '2024-07-01'),
(2, 'P002', 12, 'B1', '2024-07-02'),
(3, 'P003', 13, 'C1', '2024-07-03'),
(4, 'P004', 14, 'D1', '2024-07-04'),
(5, 'P005', 15, 'E1', '2024-07-05'),
(6, 'P006', 16, 'F1', '2024-07-06'),
(7, 'P007', 17, 'G1', '2024-07-07'),
(8, 'P008', 18, 'H1', '2024-07-08'),
(9, 'P009', 19, 'I1', '2024-07-09'),
(10, 'P010', 20, 'J1', '2024-07-10');

#show table data
SELECT * FROM Booking;


#SQL Queries
# 1. Add a new train to the Trains table
INSERT INTO Train(TrainID,TrainName,SourceStation,DestinationStation,TotalSeats)
VALUES
(1234,'New Train','Chalisgaon','Jalgaon',2200),
(1111,'Jald Fast','Kokan','Mumbai',3500);

# 2. Add a new station to the Stations table
INSERT INTO Stations (StationID, StationName, Location)
VALUES (11, 'NDLS', 'New Delhi');

#3. Create a new schedule for a train
INSERT INTO Schedules (scheduleID, TrainID, DepartureTime, ArrivalTime, Date)
VALUES (21, 1234, '10:00:00', '18:00:00', '2024-07-21');

#4. Add a new passenger to the Passengers table
INSERT INTO Passengers (PassengersID, FirstName, LastName, DateOfBirth, Gender)
VALUES ('P011', 'Liam', 'Johnson', '1990-01-15', 'Male');

#5. Book a ticket for a passenger on a specific train schedule
INSERT INTO Booking (BookingID, PassengerID, ScheduleID, SeatNumber, BookingDate)
VALUES (11, 'P011', 21, 'K1', '2024-07-11');

#6. List all trains departing from a specific station on a given date
SELECT t.TrainID, t.TrainName, s.DepartureTime, s.ArrivalTime
FROM Train t
JOIN Schedules s ON t.TrainID = s.TrainID
WHERE t.SourceStation = 'Mumbai' AND s.Date = '2024-07-19';

#7. List all passengers booked on a specific train schedule

#8. Update the schedule of a train
UPDATE Schedules
SET DepartureTime = '12:00:00', ArrivalTime = '20:00:00'
WHERE ScheduleID = 21;

#9. Cancel a booking and free up the seat
DELETE FROM Booking
WHERE BookingID = 11;

#10. Delete a train from the database
DELETE FROM Train
WHERE TrainID = 1234;

#Advance SQL queries 
/* 1. Create a user-defined function to calculate the age of a passenges
   2.CREATE DEFINER=`root`@`localhost` FUNCTION `CalculateAge`(birthdate DATE) RETURNS int
    DETERMINISTIC
    BEGIN
         RETURN TIMESTAMPDIFF(Year,birthdate, CURDATE());
    END
   */
SELECT PassengersID, FirstName, LastName, DateOfBirth, Gender,CalculateAge(DateOfBirth)AS Age FROM Passengers;

#12.Find all passengers whose age is above a certain limit:
SELECT PassengersID, FirstName, LastName FROM Passengers WHERE CalculateAge(DateOfBirth)>=41;


#13. List the total number of passengers traveling on each train on a specific date
SELECT t.TrainID, t.TrainName, COUNT(b.BookingID) AS TotalPassengers
FROM Train t
JOIN Schedules s ON t.TrainID = s.TrainID
JOIN Booking b ON s.scheduleID = b.ScheduleID
WHERE s.Date = '2024-07-19'
GROUP BY t.TrainID, t.TrainName;

#14. Find the station with the maximum number of departures on a specific date
SELECT t.SourceStation, COUNT(s.ScheduleID) AS TotalDepartures
FROM Train t
JOIN Schedules s ON t.TrainID = s.TrainID
WHERE s.Date = '2024-07-19'
GROUP BY t.SourceStation
ORDER BY TotalDepartures DESC
LIMIT 1;

#15. List the names of all passengers who have booked more than one ticket on a specific date

SELECT p.FirstName, p.LastName, COUNT(b.BookingID) AS NumberOfBookings
FROM Passengers p
JOIN Booking b ON p.PassengersID = b.PassengerID
JOIN Schedules s ON b.ScheduleID = s.ScheduleID
WHERE s.Date = '2024-07-19'
GROUP BY p.FirstName, p.LastName
HAVING NumberOfBookings > 1;

#16. List all trains and their total seat availability along with the number of booked seats

SELECT t.TrainID, t.TrainName, t.TotalSeats, COUNT(b.BookingID) AS BookedSeats
FROM Train t
LEFT JOIN Schedules s ON t.TrainID = s.TrainID
LEFT JOIN Booking b ON s.ScheduleID = b.ScheduleID
GROUP BY t.TrainID, t.TrainName, t.TotalSeats;

#17. Find all trains that go to a specific destination (e.g., 'Mumbai')
SELECT TrainID, TrainName 
FROM Train 
WHERE DestinationStation = 'Mumbai';

#18. Find all passengers who have booked a ticket on a specific train (e.g., TrainID 2344)

SELECT p.PassengersID, p.FirstName, p.LastName
FROM Passengers p
JOIN Booking b ON p.PassengersID = b.PassengerID
JOIN Schedules s ON b.ScheduleID = s.ScheduleID
WHERE s.TrainID = 2344;


#19. List the schedule of a specific train (e.g., TrainID 2344)
SELECT * 
FROM Schedules 
WHERE TrainID = 2344;

#20. List all bookings made by a specific passenger (e.g., PassengerID 'P001')
SELECT * 
FROM Booking 
WHERE PassengerID = 'P001';

#21. Find the total number of seats available on a specific train (e.g., TrainID 2344)

SELECT TrainID, TrainName, TotalSeats 
FROM Train 
WHERE TrainID = 2344;

#22. List all trains that have departed from a specific station (e.g., 'Delhi') at least once

SELECT DISTINCT t.TrainID, t.TrainName
FROM Train t
JOIN Schedules s ON t.TrainID = s.TrainID
WHERE t.SourceStation = 'Delhi';
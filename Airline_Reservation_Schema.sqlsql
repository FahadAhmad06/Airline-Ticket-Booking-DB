
-- =====================================================
-- CREATE AIRPORTS TABLE
-- =====================================================

CREATE TABLE Airports(
	Airport_ID int IDENTITY(1,1) NOT NULL,
	Airport_Name varchar(100) NOT NULL,
	City varchar(50) NOT NULL,
	Country varchar(50) NOT NULL
);



-- =====================================================
-- CREATE BOOKINGS TABLE
-- =====================================================

CREATE TABLE Bookings(
	Booking_ID int IDENTITY(1,1) NOT NULL,
	Passenger_ID int NOT NULL,
	Flight_ID int NOT NULL,
	Seat_ID int NOT NULL,
	Booking_DateTime datetime NULL
);



-- =====================================================
-- CREATE EMPLOYEES TABLE
-- =====================================================

CREATE TABLE Employees(
	Employee_ID int IDENTITY(1,1) NOT NULL,
	Name varchar(50) NOT NULL,
	Role varchar(25) NOT NULL,
	Email varchar(30) NULL
);



-- =====================================================
-- CREATE FLIGHT_CREW TABLE
-- =====================================================

CREATE TABLE Flight_Crew(
	Crew_ID int IDENTITY(1,1) NOT NULL,
	Flight_ID int NOT NULL,
	Employee_ID int NOT NULL
);



-- =====================================================
-- CREATE FLIGHTS TABLE
-- =====================================================

CREATE TABLE Flights(
	Flight_ID int IDENTITY(1,1) NOT NULL,
	Flight_Number varchar(10) NOT NULL,
	Departure_Airport_ID int NOT NULL,
	Arrival_Airport_ID int NOT NULL,
	Departure_DateTime datetime NOT NULL,
	Arrival_DateTime datetime NOT NULL,
	Aircraft_Type varchar(50) NOT NULL,
	Status varchar(20) NULL
);



-- =====================================================
-- CREATE PASSENGERS TABLE
-- =====================================================

CREATE TABLE Passengers(
	Passenger_ID int IDENTITY(1,1) NOT NULL,
	First_Name varchar(30) NOT NULL,
	Last_Name varchar(30) NOT NULL,
	Phone_Number varchar(15) NOT NULL,
	Email varchar(50) NOT NULL,
	Passport_Number varchar(30) NOT NULL
);



-- =====================================================
-- CREATE SEATS TABLE
-- =====================================================

CREATE TABLE Seats(
	Seat_ID int IDENTITY(1,1) NOT NULL,
	Flight_ID int NOT NULL,
	Seat_Number varchar(20) NOT NULL,
	class varchar(20) NOT NULL,
	Available char(1) NOT NULL
);



-- =====================================================
-- INSERT DATA INTO AIRPORTS TABLE
-- =====================================================

INSERT INTO Airports (Airport_Name, City, Country)
VALUES
('Jinnah International Airport', 'Karachi', 'Pakistan'),
('Allama Iqbal International Airport', 'Lahore', 'Pakistan'),
('Dubai International Airport', 'Dubai', 'UAE'),
('Heathrow Airport', 'London', 'United Kingdom');



-- =====================================================
-- INSERT DATA INTO PASSENGERS TABLE
-- =====================================================

INSERT INTO Passengers
(
	First_Name,
	Last_Name,
	Phone_Number,
	Email,
	Passport_Number
)
VALUES
('Ali', 'Khan', '+9203001234567', 'ali@gmail.com', 'PK123456'),
('Ahmed', 'Raza', '+9203111234567', 'ahmed@gmail.com', 'PK654321'),
('Sara', 'Iqbal', '+9203221234567', 'sara@gmail.com', 'PK987654'),
('Ayesha', 'Noor', '+9203331234567', 'ayesha@gmail.com', 'PK741852');



-- =====================================================
-- INSERT DATA INTO EMPLOYEES TABLE
-- =====================================================

INSERT INTO Employees (Name, Role, Email)
VALUES
('Usman Tariq', 'Pilot', 'usman@airline.com'),
('Hassan Ali', 'Co-Pilot', 'hassan@airline.com'),
('Fatima Noor', 'Cabin Crew', 'fatima@airline.com'),
('Zain Ahmed', 'Manager', 'zain@airline.com');



-- =====================================================
-- INSERT DATA INTO FLIGHTS TABLE
-- =====================================================

INSERT INTO Flights
(
	Flight_Number,
	Departure_Airport_ID,
	Arrival_Airport_ID,
	Departure_DateTime,
	Arrival_DateTime,
	Aircraft_Type,
	Status
)
VALUES
(
	'PK101',
	1,
	2,
	'2026-05-10 08:00:00',
	'2026-05-10 10:00:00',
	'Boeing 737',
	'Scheduled'
),
(
	'PK202',
	2,
	3,
	'2026-05-11 12:00:00',
	'2026-05-11 16:00:00',
	'Airbus A320',
	'On Time'
),
(
	'PK303',
	3,
	4,
	'2026-05-12 18:00:00',
	'2026-05-12 23:00:00',
	'Boeing 777',
	'Delayed'
);



-- =====================================================
-- INSERT DATA INTO SEATS TABLE
-- =====================================================

INSERT INTO Seats
(
	Flight_ID,
	Seat_Number,
	class,
	Available
)
VALUES
(1, 'A1', 'Business', 'Y'),
(1, 'A2', 'Economy', 'Y'),
(2, 'B1', 'Business', 'N'),
(2, 'B2', 'Economy', 'Y'),
(3, 'C1', 'Economy', 'Y');



-- =====================================================
-- INSERT DATA INTO BOOKINGS TABLE
-- =====================================================

INSERT INTO Bookings
(
	Passenger_ID,
	Flight_ID,
	Seat_ID,
	Booking_DateTime
)
VALUES
(1, 1, 1, GETDATE()),
(2, 1, 2, GETDATE()),
(3, 2, 3, GETDATE()),
(4, 3, 5, GETDATE());



-- =====================================================
-- INSERT DATA INTO FLIGHT_CREW TABLE
-- =====================================================

INSERT INTO Flight_Crew
(
	Flight_ID,
	Employee_ID
)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);



-- =====================================================
-- DISPLAY ALL TABLE DATA
-- =====================================================

SELECT * FROM Airports;

SELECT * FROM Passengers;

SELECT * FROM Employees;

SELECT * FROM Flights;

SELECT * FROM Seats;

SELECT * FROM Bookings;

SELECT * FROM Flight_Crew;

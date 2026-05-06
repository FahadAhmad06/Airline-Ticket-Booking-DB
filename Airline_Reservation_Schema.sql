



-- =====================================================
-- CREATE AIRPORTS TABLE
-- =====================================================

CREATE TABLE Airports(
	Airport_ID INT IDENTITY(1,1) PRIMARY KEY,
	Airport_Name VARCHAR(100) NOT NULL,
	City VARCHAR(50) NOT NULL,
	Country VARCHAR(50) NOT NULL
);



-- =====================================================
-- CREATE PASSENGERS TABLE
-- =====================================================

CREATE TABLE Passengers(
	Passenger_ID INT IDENTITY(1,1) PRIMARY KEY,
	First_Name VARCHAR(30) NOT NULL,
	Last_Name VARCHAR(30) NOT NULL,
	Phone_Number VARCHAR(15) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Passport_Number VARCHAR(30) NOT NULL
);



-- =====================================================
-- CREATE EMPLOYEES TABLE
-- =====================================================

CREATE TABLE Employees(
	Employee_ID INT IDENTITY(1,1) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL,
	Role VARCHAR(25) NOT NULL,
	Email VARCHAR(30) NULL
);



-- =====================================================
-- CREATE FLIGHTS TABLE
-- =====================================================

CREATE TABLE Flights(
	Flight_ID INT IDENTITY(1,1) PRIMARY KEY,
	Flight_Number VARCHAR(10) NOT NULL,
	Departure_Airport_ID INT NOT NULL,
	Arrival_Airport_ID INT NOT NULL,
	Departure_DateTime DATETIME NOT NULL,
	Arrival_DateTime DATETIME NOT NULL,
	Aircraft_Type VARCHAR(50) NOT NULL,
	Status VARCHAR(20) NULL,

	FOREIGN KEY (Departure_Airport_ID)
	REFERENCES Airports(Airport_ID),

	FOREIGN KEY (Arrival_Airport_ID)
	REFERENCES Airports(Airport_ID)
);



-- =====================================================
-- CREATE SEATS TABLE
-- =====================================================

CREATE TABLE Seats(
	Seat_ID INT IDENTITY(1,1) PRIMARY KEY,
	Flight_ID INT NOT NULL,
	Seat_Number VARCHAR(20) NOT NULL,
	Class VARCHAR(20) NOT NULL,
	Available CHAR(1) NOT NULL,

	FOREIGN KEY (Flight_ID)
	REFERENCES Flights(Flight_ID)
);



-- =====================================================
-- CREATE BOOKINGS TABLE
-- =====================================================

CREATE TABLE Bookings(
	Booking_ID INT IDENTITY(1,1) PRIMARY KEY,
	Passenger_ID INT NOT NULL,
	Flight_ID INT NOT NULL,
	Seat_ID INT NOT NULL,
	Booking_DateTime DATETIME NULL,

	FOREIGN KEY (Passenger_ID)
	REFERENCES Passengers(Passenger_ID),

	FOREIGN KEY (Flight_ID)
	REFERENCES Flights(Flight_ID),

	FOREIGN KEY (Seat_ID)
	REFERENCES Seats(Seat_ID)
);



-- =====================================================
-- CREATE FLIGHT_CREW TABLE
-- =====================================================

CREATE TABLE Flight_Crew(
	Crew_ID INT IDENTITY(1,1) PRIMARY KEY,
	Flight_ID INT NOT NULL,
	Employee_ID INT NOT NULL,

	FOREIGN KEY (Flight_ID)
	REFERENCES Flights(Flight_ID),

	FOREIGN KEY (Employee_ID)
	REFERENCES Employees(Employee_ID)
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
('Ali', 'Khan', '03001234567', 'ali@gmail.com', 'PK123456'),
('Ahmed', 'Raza', '03111234567', 'ahmed@gmail.com', 'PK654321'),
('Sara', 'Iqbal', '03221234567', 'sara@gmail.com', 'PK987654'),
('Ayesha', 'Noor', '03331234567', 'ayesha@gmail.com', 'PK741852');



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
	Class,
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
-- STORED PROCEDURE:
-- ADD NEW PASSENGER
-- =====================================================

CREATE PROCEDURE AddPassenger
(
    @First_Name VARCHAR(30),
    @Last_Name VARCHAR(30),
    @Phone_Number VARCHAR(15),
    @Email VARCHAR(50),
    @Passport_Number VARCHAR(30)
)
AS
BEGIN
    INSERT INTO Passengers
    (
        First_Name,
        Last_Name,
        Phone_Number,
        Email,
        Passport_Number
    )
    VALUES
    (
        @First_Name,
        @Last_Name,
        @Phone_Number,
        @Email,
        @Passport_Number
    );
END;



-- =====================================================
-- STORED PROCEDURE:
-- VIEW ALL FLIGHTS
-- =====================================================

CREATE PROCEDURE ViewFlights
AS
BEGIN
    SELECT * FROM Flights;
END;



-- =====================================================
-- STORED PROCEDURE:
-- BOOK FLIGHT
-- =====================================================

CREATE PROCEDURE BookFlight
(
    @Passenger_ID INT,
    @Flight_ID INT,
    @Seat_ID INT
)
AS
BEGIN
    INSERT INTO Bookings
    (
        Passenger_ID,
        Flight_ID,
        Seat_ID,
        Booking_DateTime
    )
    VALUES
    (
        @Passenger_ID,
        @Flight_ID,
        @Seat_ID,
        GETDATE()
    );
END;



-- =====================================================
-- STORED PROCEDURE:
-- VIEW AVAILABLE SEATS
-- =====================================================

CREATE PROCEDURE AvailableSeats
AS
BEGIN
    SELECT *
    FROM Seats
    WHERE Available = 'Y';
END;



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

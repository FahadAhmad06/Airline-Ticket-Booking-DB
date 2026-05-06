<img width="1234" height="819" alt="erd" src="https://github.com/user-attachments/assets/8de8266f-11e2-4e17-834e-382f7f9eb8ff" /># ✈️ Airline Reservation System Database

<div align="center">

![MSSQL](https://img.shields.io/badge/Database-Microsoft%20SQL%20Server-blue?style=for-the-badge&logo=microsoftsqlserver)
![Project](https://img.shields.io/badge/Project-Airline%20Reservation%20System-success?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-Open%20Source-red?style=for-the-badge)

### A Relational Database Management System for Airline Operations

This project was developed using **Microsoft SQL Server (MSSQL)** to manage airline operations including passengers, flights, airports, bookings, seats, and employee assignments.

</div>

---

# 📖 Project Description

The **Airline Reservation System** is a database project designed to simulate how real airline systems manage and organize data.

The system handles:

- Passenger records
- Flight scheduling
- Airport management
- Ticket bookings
- Seat allocation
- Employee & crew assignments
- Relationship management using foreign keys

This project demonstrates the practical implementation of:

- Relational Database Concepts
- Database Normalization
- Entity Relationship Modeling
- Primary & Foreign Keys
- One-to-Many Relationships
- Many-to-Many Relationships

---

# 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft SQL Server (MSSQL) | Database Management |
| SQL | Query Language |
| ER Diagram | Database Design |
| Relational Model | Data Organization |

---

# 🗂️ Database Tables

## 👤 Passengers

Stores passenger information.

| Column Name | Description |
|---|---|
| Passenger_ID | Unique passenger ID |
| First_Name | Passenger first name |
| Last_Name | Passenger last name |
| Phone_Number | Contact number |
| Email | Passenger email |
| Passport_Number | Passport information |

---

## ✈️ Flights

Stores flight schedules and details.

| Column Name | Description |
|---|---|
| Flight_ID | Unique flight ID |
| Flight_Number | Flight number |
| Departure_Airport_ID | Departure airport |
| Arrival_Airport_ID | Arrival airport |
| Departure_DateTime | Departure date & time |
| Arrival_DateTime | Arrival date & time |
| Aircraft_Type | Aircraft type |
| Status | Flight status |

---

## 🏢 Airports

Stores airport details.

| Column Name | Description |
|---|---|
| Airport_ID | Unique airport ID |
| Airport_Name | Airport name |
| City | Airport city |
| Country | Airport country |
| Code | Airport code |

---

## 💺 Seats

Stores seat information for flights.

| Column Name | Description |
|---|---|
| Seat_ID | Unique seat ID |
| Flight_ID | Related flight |
| Seat_Number | Seat number |
| Class | Seat class |
| Available | Seat availability |

---

## 🎫 Bookings

Stores booking records.

| Column Name | Description |
|---|---|
| Booking_ID | Unique booking ID |
| Passenger_ID | Related passenger |
| Flight_ID | Related flight |
| Seat_ID | Reserved seat |
| Booking_DateTime | Booking date and time |

---

## 👨‍✈️ Employees

Stores employee information.

| Column Name | Description |
|---|---|
| Employee_ID | Unique employee ID |
| Name | Employee name |
| Role | Employee role |
| Email | Employee email |

---

## 👥 Flight_Crew

Manages employee assignments for flights.

| Column Name | Description |
|---|---|
| Crew_ID | Unique crew ID |
| Flight_ID | Related flight |
| Employee_ID | Assigned employee |

---

# 🔗 Database Relationships

| Relationship | Type |
|---|---|
| One Passenger → Many Bookings | One-to-Many |
| One Flight → Many Bookings | One-to-Many |
| One Flight → Many Seats | One-to-Many |
| One Airport → Many Flights | One-to-Many |
| Employees ↔ Flights | Many-to-Many |

---

# 📷 Entity Relationship Diagram (ERD)

<div align="center">

![ER Diagram](<img width="1234" height="819" alt="erd" src="https://github.com/user-attachments/assets/20fd7e99-8c8f-474a-80ca-fc42be61ed12" />
)

</div>

---

# 🎯 Project Objectives

This project helps in understanding:

- Database Design
- SQL Server Concepts
- Table Relationships
- ER Diagram Creation
- Data Integrity
- Database Normalization
- Airline Reservation Management

---

# 🚀 Future Enhancements

Possible future improvements include:

- Online Ticket Booking
- Payment Integration
- Admin Dashboard
- Passenger Authentication
- Real-Time Flight Tracking
- Web-Based Interface
- Automated Seat Reservation

---

# 👨‍💻 Author

## Fahad Ahmad

Computer Science Student & Database Developer

---

# 📄 License

This project is open-source and free to use for educational and learning purposes.
Anyone can use, modify, and distribute this project.

---

# ⭐ Support

If you like this project:

- Give this repository a ⭐
- Fork the repository
- Share it with others

---


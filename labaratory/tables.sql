-- Create the Patients table
CREATE TABLE Patients (
    PatientID serial PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    DOB DATE NOT NULL,
    Gender VARCHAR(10)
);

-- Create the Tests table
CREATE TABLE Tests (
    TestID varchar(10) PRIMARY KEY,
    TestName VARCHAR(255) NOT NULL,
    Cost DECIMAL(10, 2) NOT NULL
);

-- Create the Doctors table
CREATE TABLE Doctors (
    DoctorID VARCHAR(10) PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Date_of_joining DATE NOT NULL,
    Designation VARCHAR(255) NOT NULL
);

-- Create the Bookings table
CREATE TABLE Bookings (
    BookingID serial PRIMARY KEY,
    TestID VARCHAR(10) NOT NULL,
    PatientID INT NOT NULL,
    DoctorID VARCHAR(10) NOT NULL,
    Date DATE NOT NULL,
    FOREIGN KEY (TestID) REFERENCES Tests(TestID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Create the TestResults table
CREATE TABLE TestResults (
    ResultID serial PRIMARY KEY,
	BookingID INT NOT NULL,
    Status VARCHAR(255) NOT NULL,
    Report TEXT NOT NULL,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

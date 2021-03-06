


CREATE TABLE Person
(
	PersonID INT PRIMARY KEY NOT NULL,
	firstName NVARCHAR(100),
	lastName NVARCHAR(100)
);

CREATE TABLE Flavor
(
	FlavorID INT PRIMARY KEY NOT NULL,
	flavorName NVARCHAR(100)
);

CREATE TABLE PersonFlavorJunction
(
	personFlavorID INT PRIMARY KEY NOT NULL,
	PersonID INT NOT NULL FOREIGN KEY REFERENCES Person(PersonID),
	FlavorID INT NOT NULL FOREIGN KEY REFERENCES Flavor(FlavorID)
);
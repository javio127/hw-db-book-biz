DROP DATABASE IF EXISTS `books`;
CREATE DATABASE IF NOT EXISTS `books`;
USE `books`;

-- TABLE Books -- 
CREATE TABLE `Books` (
	`ISBN` int (50) NOT NULL,
    `Title` varchar (50) NOT NULL,
    `AuthorID` int (50) NOT NULL,
    `PublisherID` int (50) NOT NULL,
    `Price` int (50) NOT NULL,
    `Pages` int (50) NOT NULL,
    `EditorID` int (50) NOT NULL,
    `Royalty` int (50) NOT NULL,
    `Genre` varchar (50) NOT NULL,
    PRIMARY KEY (`ISBN`),
    INDEX `ISBN` (`ISBN` ASC),
    FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`),
    FOREIGN KEY (`PublisherID`) REFERENCES `Publishers` (`PublisherID`),
    FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    
CREATE TABLE `Publishers` (
	`PublisherID` int (50) NOT NULL,
    `PublisherName` varchar (50) NOT NULL,
    `Address` varchar (50) NOT NULL,
    `NumberBooksSold` int (50) NOT NULL,
    PRIMARY KEY (`PublisherID`),
    INDEX `PublisherID` (`PublisherID` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    
    CREATE TABLE `Authors` (
	`AuthorID` int (50) NOT NULL,
    `Name` varchar (50) NOT NULL,
	PRIMARY KEY (`AuthorID`),
    INDEX `AuthorID` (`AuthorID` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;
    
    

CREATE TABLE `Orders` (
	`OrderID`   int (50) NOT NULL,
    `OrderDate`  varchar (100) NOT NULL,
    `CustomerID` int (50) NOT NULL,
    `OrderAmount` int (50) NOT NULL,
    PRIMARY KEY (`OrderID`),	
	INDEX `OrderID` (`OrderID` ASC),
    FOREIGN KEY (`ISBN`) REFERENCES `Books` (`ISBN`),
    FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Customers` (
	`CustomerID` int (50) NOT NULL,
    `Name` varchar (100) NOT NULL,
    `PhoneNumber` int (50) NOT NULL,
	`Address` varchar (100) NOT NULL,
    `OrderID` int (50) NOT NULL,
    PRIMARY KEY (`CustomerID`),
    INDEX `CustomerID` (`CustomerID` ASC)
    ) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=utf8mb4_0900_ai_ci;




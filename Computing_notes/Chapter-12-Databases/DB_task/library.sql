DROP TABLE IF EXISTS `Publisher`;
CREATE TABLE IF NOT EXISTS `Publisher` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT NOT NULL
);
DROP TABLE IF EXISTS `Loan`;
CREATE TABLE IF NOT EXISTS `Loan` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`BorrowerID`	INTEGER NOT NULL,
	`BookID`	INTEGER NOT NULL,
	`DateBorrowed`	TEXT,
	FOREIGN KEY(`BorrowerID`) REFERENCES `Borrower`(`ID`),
	FOREIGN KEY(`BookID`) REFERENCES `Book`(`ID`)
);
DROP TABLE IF EXISTS `Borrower`;
CREATE TABLE IF NOT EXISTS `Borrower` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`FirstName`	TEXT,
	`SurName`	TEXT,
	`Contact`	TEXT NOT NULL
);
DROP TABLE IF EXISTS `Book`;
CREATE TABLE IF NOT EXISTS `Book` (
	`ID`	INTEGER NOT NULL UNIQUE,
	`Title`	TEXT NOT NULL,
	`PublisherID`	INTEGER,
	`Damaged`	INTEGER NOT NULL,
	FOREIGN KEY(`PublisherID`) REFERENCES `Publisher`(`ID`),
	PRIMARY KEY(`ID`)
);

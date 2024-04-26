CREATE TABLE IF NOT EXISTS `Publisher` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT NOT NULL
);
INSERT INTO `Publisher` VALUES (1,'NPH');
INSERT INTO `Publisher` VALUES (2,'Unprop');
INSERT INTO `Publisher` VALUES (3,'Appleson');
INSERT INTO `Publisher` VALUES (4,'SEAB');
INSERT INTO `Publisher` VALUES (5,'Penguin');
CREATE TABLE IF NOT EXISTS `Loan` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`BorrowerID`	INTEGER NOT NULL,
	`BookID`	INTEGER NOT NULL,
	`DateBorrowed`	TEXT,
	FOREIGN KEY(`BorrowerID`) REFERENCES `Borrower`(`ID`),
	FOREIGN KEY(`BookID`) REFERENCES `Book`(`ID`)
);
INSERT INTO `Loan` VALUES (1,3,2,'20180220');
INSERT INTO `Loan` VALUES (2,3,1,'20171215');
INSERT INTO `Loan` VALUES (3,2,3,'20171231');
INSERT INTO `Loan` VALUES (4,1,5,'20180111');
CREATE TABLE IF NOT EXISTS `Borrower` (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`FirstName`	TEXT,
	`SurName`	TEXT,
	`Contact`	TEXT NOT NULL
);
INSERT INTO `Borrower` VALUES (1,'Jerlyn','Lim','91111111');
INSERT INTO `Borrower` VALUES (2,'Andrel','Quoid','92222222');
INSERT INTO `Borrower` VALUES (3,'Jiaxuan','Tang','83333333');
INSERT INTO `Borrower` VALUES (4,'Phuc Truong','Nguyen','94444444');
CREATE TABLE IF NOT EXISTS `Book` (
	`ID`	INTEGER NOT NULL UNIQUE,
	`Title`	TEXT NOT NULL,
	`PublisherID`	INTEGER,
	`Damaged`	INTEGER NOT NULL,
	FOREIGN KEY(`PublisherID`) REFERENCES `Publisher`(`ID`),
	PRIMARY KEY(`ID`)
);
INSERT INTO `Book` VALUES (1,'The Lone Gatsby',5,0);
INSERT INTO `Book` VALUES (2,'A WInter''s Slumber',4,0);
INSERT INTO `Book` VALUES (3,'Life of Pie',4,0);
INSERT INTO `Book` VALUES (4,'A Brief History of Primates',3,0);
INSERT INTO `Book` VALUES (5,'To Praise a Mockingbird',2,0);
INSERT INTO `Book` VALUES (6,'The Catcher in The Eye',1,0);
INSERT INTO `Book` VALUES (123,'H2 Computing Ten Year Series',NULL,0);

DROP TABLE IF EXISTS `Tech`;
CREATE TABLE IF NOT EXISTS `Tech` (
	`Emp_ID`	INTEGER,
	`Repairs`	INTEGER,
	PRIMARY KEY(`Emp_ID`),
	FOREIGN KEY(`Emp_ID`) REFERENCES `Employee`(`Emp_ID`)
);
DROP TABLE IF EXISTS `Sales`;
CREATE TABLE IF NOT EXISTS `Sales` (
	`Emp_ID`	INTEGER,
	`Sales`	REAL,
	PRIMARY KEY(`Emp_ID`),
	FOREIGN KEY(`Emp_ID`) REFERENCES `Employee`(`Emp_ID`)
);
DROP TABLE IF EXISTS `Employee`;
CREATE TABLE IF NOT EXISTS `Employee` (
	`Emp_name`	TEXT,
	`Emp_ID`	INTEGER,
	`Dept`	TEXT,
	`Emp_date`	TEXT,
	`Status`	TEXT,
	PRIMARY KEY(`Emp_ID`)
);


DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Subcategory;
DROP TABLE IF EXISTS Campaign; 

CREATE TABLE Contacts(
	contact_id int NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY(contact_id)
);

CREATE TABLE Category(
	category_id VARCHAR(6) NOT NULL,
	category VARCHAR(30) NOT NULL,
	PRIMARY KEY(category_id)
);

CREATE TABLE Subcategory(
	subcategory_id VARCHAR(9) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	PRIMARY KEY(subcategory_id)
);

CREATE TABLE Campaign(
	cf_id int NOT NULL,
	contact_id int NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(100),
	goal float,
	pledged float, 
	outcome VARCHAR(10),
	backers_count int,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date date,
	end_date date,
	category VARCHAR(30) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	category_id VARCHAR(6) NOT NULL,
	subcategory_id VARCHAR(9) NOT NULL,
	PRIMARY KEY(cf_id),
	FOREIGN KEY(contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY(category_id) REFERENCES Category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES Subcategory(subcategory_id)
);

SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Contacts;
SELECT * FROM Campaign;
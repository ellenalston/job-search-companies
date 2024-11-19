BEGIN TRANSACTION;

DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS pathway;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE companies (
	company_id SERIAL, 
	company_name varchar, 
	city varchar,
	url varchar,
	CONSTRAINT PK_companies PRIMARY KEY (company_id)
);

COMMIT TRANSACTION;

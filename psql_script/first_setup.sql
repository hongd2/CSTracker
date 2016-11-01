DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

CREATE TABLE IF NOT EXISTS users (
	user_id			SERIAL,
	username		VARCHAR( 100 ) UNIQUE,
	password		VARCHAR( 100 ),
	salt			VARCHAR( 32 ),
	admin_flag		BOOLEAN NOT NULL,
	fullTimer_flag		BOOLEAN NOT NULL,
	student_flag		BOOLEAN NOT NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS students (
	student_id		SERIAL,
	firstName		VARCHAR( 200 ),
	lastName		VARCHAR( 200 ),
	year			INTEGER,
	major			VARCHAR( 200 ),
	minor			VARCHAR( 200 ),
	PRIMARY KEY (student_id)
);

CREATE TABLE IF NOT EXISTS fullTimers (
	fullTimer_id		SERIAL,
	firstName		VARCHAR( 200 ),
	lastName		VARCHAR( 200 ),
	address			VARCHAR( 200 ),
	student_id		SERIAL,
	FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (fullTimer_id)
);

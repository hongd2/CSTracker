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
	phone			VARCHAR( 15 ),
	email			VARCHAR( 200 ),
	PRIMARY KEY (student_id)
);

CREATE TABLE IF NOT EXISTS fullTimers (
	fullTimer_id		SERIAL,
	firstName		VARCHAR( 200 ),
	lastName		VARCHAR( 200 ),
	PRIMARY KEY (fullTimer_id)
);

CREATE TABLE IF NOT EXISTS student_fullTimer (
	student_fullTimer_id	SERIAL,
	student_id		SERIAL,
	fullTimer_id		SERIAL,
	start_time		TIMESTAMPTZ NOT NULL,
	end_time		TIMESTAMPTZ,
	FOREIGN KEY (student_id) REFERENCES students (student_id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (fullTimer_id) REFERENCES fullTimers (fullTimer_id) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (student_fullTimer_id)
);

DELETE FROM users;

-- Create owner
-- id: owner1@gmail.com
-- password: owner1
INSERT INTO users (username, password, salt, admin_flag, fullTimer_flag, student_flag) VALUES ( 'owner1@gmail.com', '$2a$10$29a3PIlKN3s8ykz6ktAdm.ajQi8vrR1RFy9.dmQoqvdJASxM.r7Qm', 'TOAU7oQB+jjAriCFWf2GsQ==', TRUE, FALSE, FALSE );

-- Create full timer
-- id: fulltimer1@gmail.com
-- password: owner1
INSERT INTO users (username, password, salt, admin_flag, fullTimer_flag, student_flag) VALUES ( 'fulltimer1@gmail.com', '$2a$10$29a3PIlKN3s8ykz6ktAdm.ajQi8vrR1RFy9.dmQoqvdJASxM.r7Qm', 'TOAU7oQB+jjAriCFWf2GsQ==', FALSE, TRUE, FALSE );

-- Create student
-- id: student1@gmail.com
-- password: owner1
INSERT INTO users (username, password, salt, admin_flag, fullTimer_flag, student_flag) VALUES ( 'student1@gmail.com', '$2a$10$29a3PIlKN3s8ykz6ktAdm.ajQi8vrR1RFy9.dmQoqvdJASxM.r7Qm', 'TOAU7oQB+jjAriCFWf2GsQ==', FALSE, FALSE, TRUE );

DELETE FROM students;

INSERT INTO students (firstName, lastName, year, major, phone, email) VALUES ( 'Jimmy', 'Junior', 1, 'Computer Science', '555-111-1111', 'jimmyjunior@gmail.com' );

INSERT INTO students (firstName, lastName, year, major, phone, email) VALUES ( 'Sarah', 'Plette', 4, 'Biology', '555-222-2222', 'sarahplette@gmail.com' );

INSERT INTO students (firstName, lastName, year, major, phone, email) VALUES ( 'Abe', 'Kale', 2, 'Electrical Engineering', '555-333-3333', 'abekale@gmail.com' );

DELETE FROM fullTimers;

INSERT INTO fullTimers (firstName, lastName) VALUES ( 'David', 'Hong' ); 

DELETE FROM student_fullTimer;

INSERT INTO student_fullTimer (student_id, fullTimer_id, start_time) VALUES ( 1, 1, NOW() );

INSERT INTO student_fullTimer (student_id, fullTimer_id, start_time) VALUES ( 3, 1, NOW() );

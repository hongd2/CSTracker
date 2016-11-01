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

INSERT INTO students (firstName, lastName, year, major, minor) VALUES ( 'Jimmy', 'Junior', 1, 'Computer Science', 'Business Economics' );

DELETE FROM fullTimers;

INSERT INTO fullTimers (firstName, lastName, address) VALUES ( 'David', 'Hong', '141 Sunset Cove, Irvine, CA, 92602' ); 

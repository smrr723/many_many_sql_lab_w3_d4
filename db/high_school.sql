DROP TABLE subjects;
DROP TABLE students;

CREATE TABLE students (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);


CREATE TABLE subjects (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  teacher VARCHAR(255)
);


CREATE TABLE student_subjects (
  id SERIAL4 PRIMARY KEY,
  student_id INT4 REFERENCES students(id) ON DELETE CASCADE,
  subject_id INT4 REFERENCES subjects(id) ON DELETE CASCADE
);





-- CREATE TABLE visits (
--   id SERIAL4 PRIMARY KEY,
--   user_id INT4 REFERENCES users(id) ON DELETE CASCADE,
--   location_id INT4 REFERENCES locations(id) ON DELETE CASCADE,
--   review TEXT
--
--
-- );

--
-- Tasks
--
-- Given an individual student, the school wants to be able to see each of that student's subjects.
--
-- Given an individual subject, the school wants to be able to see each student that is registered for it.
--
-- Use Ruby, postgreSQL, and Pry to demonstrate this functionality.
--
-- Create a database at the command line
-- Create a .sql schema file with your table structure. Use psql -f -d to use that structure.
-- Create classes to represent Student, Subject, and Student_Subject. You should be able to save, fetch all, and delete all on each class. (You will also need a SqlRunner file.)
-- Create a seeds / console file to upload some data to the database
-- Write methods to get the students' subjects, and the subjects' students.

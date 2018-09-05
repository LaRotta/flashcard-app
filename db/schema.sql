DROP DATABASE IF EXISTS indexGuruDB;

CREATE DATABASE indexGuruDB;

USE indexGuruDB;

CREATE TABLE card (
	id INT NOT NULL AUTO_INCREMENT,
	question TEXT NOT NULL,
	answer TEXT NOT NULL,
	PRIMARY KEY (id)
);

-- CREATE TABLE answers (
-- 	id INT NOT NULL AUTO_INCREMENT,
--     question_id INT NOT NULL,
-- 	answer TEXT NOT NULL,
-- 	PRIMARY KEY (id),
-- 	FOREIGN KEY (question_id) REFERENCES questions(id)
-- );



-- CREATE TABLE interviewQuestions (
-- 	id INT NOT NULL AUTO_INCREMENT,
-- 	interviewQuestion TEXT NOT NULL,
-- 	topic VARCHAR(50) NOT NULL,
-- 	PRIMARY KEY (id)
-- );


-- CREATE TABLE interviewAnswers (
-- 	id INT NOT NULL AUTO_INCREMENT,
--  interviewQuestion_id INT NOT NULL,
-- 	interviewAnswer TEXT NOT NULL,
-- 	PRIMARY KEY (id),
-- 	FOREIGN KEY (interviewQuestion_id) REFERENCES interviewQuestions (id)
-- );


-- mysql> USE indexGuruDB ;
-- Reading table information for completion of table and column names
-- You can turn off this feature to get a quicker startup with -A

-- Database changed
-- mysql> SHOW TABLES;
-- +-----------------------+
-- | Tables_in_indexgurudb |
-- +-----------------------+
-- | answers               |
-- | questions             |
-- +-----------------------+
-- 2 rows in set (0.00 sec)

-- mysql> SELECT *
--     -> FROM questions;
-- +----+----------------------------------------------------------------+--------+
-- | id | question                                                       | topic  |
-- +----+----------------------------------------------------------------+--------+
-- |  1 | What is the supreme law of the land?                           | civics |
-- |  2 | What are the first three words of the Constitution?            | civics |
-- |  3 | What is an amendment?                                          | civics |
-- |  4 | Another name for the first ten amendments to the Constitution? | civics |
-- |  5 | Name one right or freedom from the First Amendment             | civics |
-- |  6 | How many amendments does the Constitution have?                | civics |
-- |  7 | Name one of the rights in the Declaration of Independence?     | civics |
-- |  8 | What is the economic system in the United States?              | civics |
-- |  9 | Name one branch or part of the government.                     | civics |
-- | 10 | How many U.S. Senators are there?                              | civics |
-- +----+----------------------------------------------------------------+--------+
-- 10 rows in set (0.00 sec)

-- mysql> SELECT * FROM answers;
-- +----+-------------+--------------------------------------------+--------+
-- | id | question_id | answer                                     | topic  |
-- +----+-------------+--------------------------------------------+--------+
-- |  1 |           1 | The Constitution                           | civics |
-- |  2 |           2 | We the People                              | civics |
-- |  3 |           3 | A change or addition (to the Constitution) | civics |
-- |  4 |           4 | The Bill of Rights                         | civics |
-- |  5 |           5 | Freedom of the Press                       | civics |
-- |  6 |           6 | Twenty-seven                               | civics |
-- |  7 |           7 | Pursuit of Happiness                       | civics |
-- |  8 |           8 | Capitalist Economy                         | civics |
-- |  9 |           9 | Judicial Branch                            | civics |
-- | 10 |          10 | One Hundred                                | civics |
-- +----+-------------+--------------------------------------------+--------+
-- 10 rows in set (0.00 sec)

-- mysql> SELECT * FROM questions
--     -> LEFT JOIN answers
--     -> ON questions.id = answers.question_id;
-- +----+----------------------------------------------------------------+--------+------+-------------+--------------------------------------------+--------+
-- | id | question                                                       | topic  | id   | question_id | answer                       | topic  |
-- +----+----------------------------------------------------------------+--------+------+-------------+--------------------------------------------+--------+
-- |  1 | What is the supreme law of the land?                           | civics |    1 |           1 | The Constitution                       | civics |
-- |  2 | What are the first three words of the Constitution?            | civics |    2 |           2 | We the People                       | civics |
-- |  3 | What is an amendment?                                          | civics |    3 |           3 | A change or addition (to the Constitution) | civics |
-- |  4 | Another name for the first ten amendments to the Constitution? | civics |    4 |           4 | The Bill of Rights                       | civics |
-- |  5 | Name one right or freedom from the First Amendment             | civics |    5 |           5 | Freedom of the Press                       | civics |
-- |  6 | How many amendments does the Constitution have?                | civics |    6 |           6 | Twenty-seven                       | civics |
-- |  7 | Name one of the rights in the Declaration of Independence?     | civics |    7 |           7 | Pursuit of Happiness                       | civics |
-- |  8 | What is the economic system in the United States?              | civics |    8 |           8 | Capitalist Economy                       | civics |
-- |  9 | Name one branch or part of the government.                     | civics |    9 |           9 | Judicial Branch                       | civics |
-- | 10 | How many U.S. Senators are there?                              | civics |   10 |          10 | One Hundred                       | civics |
-- +----+----------------------------------------------------------------+--------+------+-------------+--------------------------------------------+--------+
-- 10 rows in set (0.00 sec)


-- SELECT questions.id, questions.question, answers.answer 
-- FROM questions 
-- LEFT JOIN answers 
-- ON questions.id = answers.question_id;

-- +----+----------------------------------------------------------------+--------------------------------------------+
-- | id | question                                                       | answer                                     |
-- +----+----------------------------------------------------------------+--------------------------------------------+
-- |  1 | What is the supreme law of the land?                           | The Constitution                           |
-- |  2 | What are the first three words of the Constitution?            | We the People                              |
-- |  3 | What is an amendment?                                          | A change or addition (to the Constitution) |
-- |  4 | Another name for the first ten amendments to the Constitution? | The Bill of Rights                         |
-- |  5 | Name one right or freedom from the First Amendment             | Freedom of the Press                       |
-- |  6 | How many amendments does the Constitution have?                | Twenty-seven                               |
-- |  7 | Name one of the rights in the Declaration of Independence?     | Pursuit of Happiness                       |
-- |  8 | What is the economic system in the United States?              | Capitalist Economy                         |
-- |  9 | Name one branch or part of the government.                     | Judicial Branch                            |
-- | 10 | How many U.S. Senators are there?                              | One Hundred                                |
-- +----+----------------------------------------------------------------+--------------------------------------------+
CREATE DATABASE IF NOT EXISTS test_db;
use test_db;

CREATE TABLE IF NOT EXISTS users
(
  id         INT(11) AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(20),
  last_name  VARCHAR(20),
  created_at DATETIME,
  updated_at DATETIME
);


INSERT INTO users (first_name, last_name, created_at, updated_at)
values ( 'Jesus', 'Walker', NOW(), NOW()),
       ('Kevin', 'Walker', NOW(), NOW()),
       ('Johnathan', 'Walker', NOW(), NOW()),
       ('Emilia', 'Walker', NOW(), NOW())
;

CREATE TABLE IF NOT EXISTS user_emails
(
  id         INT(11) AUTO_INCREMENT PRIMARY KEY,
  user_id    INT(11),
  email      VARCHAR(30),
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE CASCADE
);

INSERT INTO user_emails(email, user_id, created_at, updated_at)
values ('jesus.walker@gmail.com', 1, NOW(), NOW()),
       ('kevin.walker@gmail.com', 2, NOW(), NOW()),
       ('johnathan.walker@gmail.com', 3, NOW(), NOW()),
       ('emilia.walker@gmail.com', 4, NOW(), NOW());

CREATE TABLE IF NOT EXISTS user_phone_numbers
(
  id         INT(11) AUTO_INCREMENT PRIMARY KEY,
  user_id    INT(11),
  phone_number      VARCHAR(30),
  created_at DATETIME,
  updated_at DATETIME,
  FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE CASCADE
);

INSERT INTO user_phone_numbers(phone_number, user_id, created_at, updated_at)
values ('526861317291', 1, NOW(), NOW()),
       ('526861219089', 2, NOW(), NOW()),
       ('526869062825', 3, NOW(), NOW()),
       ('526867065746', 4, NOW(), NOW());


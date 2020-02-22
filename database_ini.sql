CREATE DATABASE IF NOT EXISTS phone_book;

USE phone_book;

CREATE TABLE IF NOT EXISTS users
(
    id         int(11)      NOT NULL AUTO_INCREMENT,
    first_name varchar(256) NOT NULL,
    last_name  varchar(256) NOT NULL,
    created_at timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


CREATE TABLE IF NOT EXISTS user_emails
(
    id         int(11)      NOT NULL AUTO_INCREMENT,
    user_id    int(11)      NOT NULL,
    email      varchar(256) NOT NULL,
    created_at timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE,
    INDEX (user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


CREATE TABLE IF NOT EXISTS user_phone_numbers
(
    id           int(11)      NOT NULL AUTO_INCREMENT,
    user_id      int(11)      NOT NULL,
    phone_number varchar(256) NOT NULL,
    created_at   timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at   timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id) ON UPDATE CASCADE ON DELETE CASCADE,
    INDEX (user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


INSERT INTO users (first_name, last_name)
values ('Kevin', 'Stone'),
       ('Sky', 'Walker'),
       ('Paul', 'Walker'),
       ('Erin', 'Stone'),
       ('Shelby', 'Stone'),
       ('Johnathan', 'Walker');


INSERT INTO user_emails (user_id, email)
values (1, 'kevin.stone@gmail.com'),
       (2, 'sky.walker@gmail.com'),
       (3, 'paul.walker@gmail.com'),
       (4, 'erin.stone@gmail.com'),
       (5, 'shelby.stone@gmail.com'),
       (6, 'johnathan.walker@gmail.com')
;

INSERT INTO user_phone_numbers (user_id, phone_number)
values (1, '526861234567'),
       (2, '17301234567'),
       (2, '17306661234'),
       (3, '15609876554'),
       (4, '526639874532'),
       (5, '526866124361'),
       (6, '17856545462')
       ;




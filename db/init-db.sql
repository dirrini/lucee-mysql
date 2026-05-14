SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

CREATE DATABASE IF NOT EXISTS luceeapp;
USE luceeapp;

DROP TABLE if exists mensagens;

CREATE TABLE IF NOT EXISTS mensagens (
  id INT AUTO_INCREMENT PRIMARY KEY,
  mensagem VARCHAR(255) NOT NULL
);

ALTER TABLE mensagens
ADD autor VARCHAR(255) NOT NULL;

INSERT INTO mensagens (mensagem, autor)
VALUES ('Hello world', 'John Doe'),
       ('Welcome to Lucee!', 'Diego Smarrini'),
       ('Sou do Brasil, e falo português.', 'Pedro Pereira')
ON DUPLICATE KEY UPDATE mensagem = VALUES(mensagem);
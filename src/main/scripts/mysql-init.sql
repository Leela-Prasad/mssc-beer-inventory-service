DROP DATABASE IF EXISTS beersinventoryervice;

DROP USER `beer_inv_service`@`%`;

CREATE DATABASE IF NOT EXISTS beerinventoryservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER `beer_inv_service`@`%` IDENTIFIED BY 'password';


GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
    CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `beerinventoryservice`.* TO `beer_inv_service`@`%`;

FLUSH PRIVILEGES;
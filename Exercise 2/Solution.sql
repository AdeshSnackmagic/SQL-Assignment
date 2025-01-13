CREATE DATABASE vtapp;

CREATE USER 'vtapp_user'@'localhost' IDENTIFIED BY 'MyPass@1234';
GRANT ALL PRIVILEGES ON  vtapp.* TO 'vtapp_user'@'localhost';


SELECT * FROM  mysql.db WHERE user='vtapp_user';



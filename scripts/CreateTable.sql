CREATE TABLE user (
userid VARCHAR(30),
passwd CHAR(60)); 


CREATE TABLE session (
uid CHAR(60),
userid VARCHAR(30),
lastActivity DATETIME);
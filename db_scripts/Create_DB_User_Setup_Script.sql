-- DROP USER 'sampleApp'@'localhost';
-- FLUSH PRIVILEGES;
CREATE USER 'sampleApp'@'localhost' IDENTIFIED BY 'mySampleAppPassword';
grant INDEX,CREATE,SELECT,INSERT,UPDATE,DELETE on sampleDB.* to 'sampleApp'@'localhost';
FLUSH PRIVILEGES;
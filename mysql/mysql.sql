-- Create root user for remote access
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root123';

-- Grant all privileges
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

-- Set password for localhost root
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root123';

FLUSH PRIVILEGES;

-- Create database
CREATE DATABASE IF NOT EXISTS appdb;
USE appdb;

-- Create employee table
CREATE TABLE IF NOT EXISTS employee(
emp_id VARCHAR(20),
first_name VARCHAR(20),
last_name VARCHAR(20),
primary_skill VARCHAR(20),
location VARCHAR(20));

-- Insert sample data
INSERT INTO employee VALUES ('1','Amanda','Williams','Smile','local');
INSERT INTO employee VALUES ('2','Alan','Williams','Empathy','alien');

#�t�H���_����C�����ɔz�u������ŁA���̖��߂����s
#\. c:\animal_db\animal_ft.sql
DROP DATABASE animal_ft;
CREATE DATABASE animal_ft;
USE animal_ft;
CREATE TABLE details(
	60id INT,
	sex CHAR(1),
	detail TEXT,
	lover_12id INT,
	lover_detail TEXT,
	friend_12id INT,
	friend_detail TEXT,
	work_12id INT,
	work_detail text
);
CREATE TABLE 60animals(
	60id INT PRIMARY KEY,
	name VARCHAR(30),
	12id int
);
CREATE TABLE 12animals(
	12id INT PRIMARY KEY,
	name char(10),
	picture char(20)
);
#�e�[�u���ւ̃f�[�^�C���|�[�g�idetails�j
LOAD DATA INFILE 'C:\\animal_db\\details.csv'
	INTO TABLE details
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\r\n'
;
#�e�[�u���ւ̃f�[�^�C���|�[�g�i60animals�j
LOAD DATA INFILE 'C:\\animal_db\\60animals.csv'
	INTO TABLE 60animals
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\r\n'
;
#�e�[�u���ւ̃f�[�^�C���|�[�g�i12animals�j
LOAD DATA INFILE 'C:\\animal_db\\12animals.csv'
	INTO TABLE 12animals
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\r\n'
;




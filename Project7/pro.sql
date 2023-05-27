DROP TABLE IF EXISTS worker CASCADE;
DROP TABLE IF EXISTS vet CASCADE;
DROP TABLE IF EXISTS animal CASCADE;
DROP TABLE IF EXISTS schedule CASCADE;
DROP TABLE IF EXISTS cage CASCADE;
DROP TABLE IF EXISTS treatment CASCADE;
DROP TABLE IF EXISTS Atypes CASCADE;

CREATE TABLE worker 

		(wid 	INT 	PRIMARY KEY,
		wname 	VARCHAR(20),
		Byear 	NUMERIC(4,0),
		city 	VARCHAR(20));
								 
CREATE TABLE vet 
						
		(wid 	INTEGER		PRIMARY KEY,	
		wname 	VARCHAR(20),
		Byear 	NUMERIC(4,0) ,
		city 	VARCHAR(20));
							  
CREATE TABLE cage
						
		(cno 	INT 	PRIMARY KEY,
		type 	VARCHAR(20),
		Size 	INT);
							   
CREATE TABLE schedule 
						
		(Cno 	INT,
		Sdate 	DATE,
	 	Shour 	TIME,
		Type 	VARCHAR(20),
		wid 	INT,
		PRIMARY KEY(Cno,Sdate,Shour),
        FOREIGN KEY (wid) REFERENCES worker,
        FOREIGN KEY (cno) REFERENCES cage);

CREATE TABLE Atypes 
						
		(Atype 	VARCHAR(20) 	PRIMARY KEY,
		Family 	VARCHAR(20),
		Atime 	VARCHAR(20));
							   
CREATE TABLE animal
					
		(Aid	INT		PRIMARY KEY,
		Aname	VARCHAR(20),
		Cno		INT ,
		atype 	VARCHAR(20),
        FOREIGN KEY (atype) REFERENCES Atypes,
        FOREIGN KEY (cno) REFERENCES cage);
								  
CREATE TABLE treatment
						
		(Aid 	INT ,
		Tdate 	DATE,
		wid 	INT,
		PRIMARY KEY(aid,tdate),
		FOREIGN KEY (aid) REFERENCES animal,
        FOREIGN KEY (wid) REFERENCES vet);						  





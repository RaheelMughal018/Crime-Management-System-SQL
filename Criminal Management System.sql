create database CMS;
use CMS;

create table Criminal(
CriminalID int primary key, 
ViolationID int, 
Name varchar(25), 
Address varchar(25), 
DOB date, 
Age int, 
CNIC varchar(15), 
PrevCases int, 
Description varchar(25));

insert into criminal values
(1,1,'Ali Sheikh','Lahore','1998-1-1',21,'90008-0100170-1',0,'Black Mark on Back'),
(2,2,'Amir Bhatti','Lahore','1998-2-2',21,'12008-0100170-2',2,'Spot on face'),
(3,3,'Fazeel Noor','Lahore','1998-3-3',21,'34008-0100170-3',0,'Mark on Arm'),
(4,4,'Khokar Niazi','Lahore','1998-4-4',21,'56008-0100170-4',2,'One legged'),
(5,5,'Jameel Boxer'	,'Lahore','1998-5-5',21,'78008-0100170-5',3,'4 fingers'),
(6,6,'Abid Boxer'	,'Lahore','1998-6-6',21,'68008-0100170-6',1,'Kana'),
(7,7,'Chota Kali'	,'Lahore','1998-7-7',21,'69008-0100170-7',7,'Red Hair'),
(8,8,'Bara Kali'	,'Lahore','1998-8-8',21,'11008-0100170-8',9,'White Hair'),
(9,9,'Ramesh Khan'	,'Lahore','1998-9-9',21,'23008-0100170-9',12,'Blonde'),
(10,10,'Jiju Komi'	,'Lahore','1998-10-10',21,'44008-0100170-2',14,'Kala hy'),
(11,11,'Kamlesh Sindhu','Lahore','1998-11-11',21,'17008-0100170-1',1,'No eyebrows'),
(12,12,'Shamir Idres','Lahore','1998-12-12',21,'54008-0100170-3',21,'Scar on face'),
(13,13,'Akbar Toka','Lahore','1998-3-13',21,'37008-0100170-3',10,'Short height'),
(14,14,'Asfand Jangli','Lahore','1998-4-14',21,'88008-0100170-2',7,'very tall'),
(15,15,'Fika',		'Lahore','1998-5-15',21,'99008-0100170-5',0,'builder'),
(16,16,'Karate Kid','Lahore','1998-6-16',21,'17008-0100170-5',4,'sukha'),
(17,17,'Rock Pathar','Lahore','1998-7-17',21,'23008-0100170-5',9,'powderi'),
(18,18,'Kamli Badmaash','Lahore','1998-8-18',21,'34008-0100170-5',21,'very fast runner'),
(19,19,'Shani Gujjar','Lahore','1998-9-19',21,'50008-0100170-5',20,'single handed'),
(20,20,'Saddam Daler','Lahore','1998-10-20',21,'34008-0100170-5',0,'mark on leg');

create table Prosecuter(
proID int primary key, 
CNIC varchar(55), 
Fname varchar(20), 
Lname varchar(20), 
court varchar(20), 
Designation varchar(10));
alter table Prosecuter alter column CNIC varchar(55);
insert into Prosecuter values
(1,'12345-0100170512-1','Ali','Kothari','Session','Advocate'),
(2,'54321-0100170512-1','Ahmed','Shakeel','High','Advocate'),
(3,'11122-0100170512-1','Munna','Gujjar','Session','Advocate'),
(4,'22111-0100170512-1','Bara','Munna','High','Advocate'),
(5,'66666-0100170512-1','Chota','Kamlesh','Session','Advocate'),
(6,'55555-0100170512-1','Babu','Rao','High','Advocate'),
(7,'12589-0100170512-1','Chambeli','Kothari','Session','Advocate'),
(8,'14789-0100170512-1','Raja','G','High','Advocate'),
(9,'16479-0100170512-1','Rana','Fika','Session','Advocate'),
(10,'20012-0100170512-1','Bablu','Singh','High','Advocate'),
(11,'13465-0100170512-1','Shakeel','Painter','Session','Advocate'),
(12,'16894-0100170512-1','Gopal','Sharma','High','Advocate'),
(13,'16578-0100170512-1','Gopal','Singh','Session','Advocate'),
(14,'19952-0100170512-1','Chacha','Rima','High','Advocate'),
(15,'16548-0100170512-1','Munna','Bhai','Session','Advocate'),
(16,'12554-0100170512-1','Circuit','Short','High','Advocate'),
(17,'13554-0100170512-1','KAmli','Juggadu','Session','Advocate'),
(18,'13214-0100170512-1','Tipu','Truckala','High','Advocate'),
(19,'14789-0100170512-1','Shamil','Shankar','Session','Advocate'),
(20,'18964-0100170512-1','Shankar','Goga','High','Advocate');


create table Evidence(
eID int primary key, 
Location varchar(25), 
Item varchar(10), 
Description varchar(25));

insert into Evidence values
(1,'Garage','Knife','Blood Stained'),
(2,'Attic','Gun','empty magazine'),
(3,'Roof','Bottle','broken'),
(4,'Lawn','Knuckle','Blood Stained'),
(5,'Store Room','Hockey','broken'),
(6,'Jhuggi','Bat','Blood Stained'),
(7,'Bathroom','Nailcutter','Blood Stained'),
(8,'Master Room','Scissor','wengi'),
(9,'Servant Room','Rope','found on fan'),
(10,'Cellar','Shisha','coal was burning'),
(11,'Drawing Room','Car','headlight broken'),
(12,'Kids Room','Bike','jharri mei thi'),
(13,'Backyard','Truck','drugs found inside'),
(14,'Alley','Chain','gold'),
(15,'Frontyard','Acid','empty'),
(16,'Courtyard','thread','glass'),
(17,'Lobby','hair','Blonde'),
(18,'Office','mobile','broken'),
(19,'Washroom','ipad','Blood Stained'),
(20,'Daftar','wallet','Blood Stained');

create table Violation(
ViolationID int primary key, 
Offence varchar(25), 
Description varchar(25), 
PenalCode int);

insert into Violation values
(1,'Murder','Premeditated',302),
(2,'Rape','Forced',304),
(3,'Burglary','home alone',102),
(4,'Hit and run','Jaan Phuch ky',205),
(5,'Divorce','Unlawful',236),
(6,'LandMafia','Kabza',654),
(7,'Electricity Chori','Ziada chori',112),
(8,'Gas Chori','kafi ziada',154),
(9,'Bakri Chori','Eid',147),
(10,'Gattar Chori','Steal seller',149),
(11,'Car theft','Spare parts',502),
(12,'CyberCrime','Online',402),
(13,'Harassment','Chera Cheri',107),
(14,'Stalking','Picha karna',117),
(15,'Forced Marriage','family pressure',998),
(16,'Kidnapping','ransom',209),
(17,'Child Labour','forced work',120),
(18,'Child Marriage','underage',333),
(19,'Money Laundering','swiss account',666),
(20,'Gambling','cricket',999);

create table Petitioner(
pID int primary key, 
Fname varchar(20), 
Lname varchar(20), 
Relationship char(10),
CNIC varchar(15));

insert into Petitioner values
(1,'Ali', 'Sheikh','Cousin','31203-0331111-1'),
(2,'Ali','Shah','Mamu','31203-0331122-1'),
(3,'usman','khan','Chacha','31203-0331133-1'),
(4,'Ali','ahmed','Taya','31203-0331144-1'),
(5,'Ali','usman','Bhanja','31203-0331155-1'),
(6,'usman','ali','Bhai','31203-0331166-1'),
(7,'usman','shah','Bhen','31203-0331177-1'),
(8,'adil','khan','Pet','31203-0331188-1'),
(9,'adil','ali','Khalu','31203-0331199-1'),
(10,'saqib','Jangli','Taya','31203-0330002-1'),
(11,'saqib','ali','Abba','31203-0330003-1'),
(12,'saqib','usman','Ama','31203-0330004-1'),
(13,'saqib','shah','Chacha','31203-0330005-1'),
(14,'ALLAH','DITA','Bhenoyi','31203-0330006-1'),
(15,'qasim','shah','Sala','31203-0330007-1'),
(16,'zahid','CH','Beta','31203-0330008-1'),
(17,'iqbal','Thippa','Kabootar','31203-0330009-1'),
(18,'shahid','PAppu','Mamu','31203-0333001-1'),
(19,'abdul','aziz','Mami','31203-0333002-1'),
(20,'Billa','Builder','Pappa','31203-0333003-1');

DROP table if exists cases ;
create table Victim(
vID int primary key, 
CNIC varchar(15), 
Fname varchar(20), 
Lname varchar(20), 
DOB date, 
age int);

insert into Victim values
(1,'31203-0331111-1','Ali', 'Sheikh','1998-1-01',21),
(2,'31203-0331122-1','Ali','Shah','1998-01-02',17),
(3,'31203-0331133-1','usman','khan','1998-01-03',19),
(4,'31203-0331144-1','Ali','ahmed','1998-01-04',20),
(5,'31203-0331155-1','Ali','usman','1998-01-05',18),
(6,'31203-0331166-1','usman','ali','1998-01-06',19),
(7,'31203-0331177-1','usman','shah','1998-01-07',21),
(8,'31203-0331188-1','adil','khan','1998-01-08',20),
(9,'31203-0331199-1','adil','ali','1998-01-09',23),
(10,'31203-0330002-1','saqib','Jangli','1998-01-10',26),
(11,'31203-0330003-1','saqib','ali','1998-02-01',24),
(12,'31203-0330004-1','saqib','usman','1998-02-02',26),
(13,'31203-0330005-1','saqib','shah','1998-02-03',20),
(14,'31203-0330006-1','ALLAH','DITA','1998-02-04',32),
(15,'31203-0330007-1','qasim','shah','1998-02-05',21),
(16,'31203-0330008-1','zahid','CH','1998-02-06',20),
(17,'31203-0330009-1','iqbal','Thippa','1998-02-07',20),
(18,'31203-0333001-1','shahid','PAppu','1998-02-08',19),
(19,'31203-0333002-1','abdul','aziz','1998-02-09',18),
(20,'31203-0333003-1','Billa','Builder','1998-02-10',19);

create table Relationship(
vID int, 
pID int,
primary key(vID,pID),
foreign key(vID) references Victim(vID),
foreign key(pID) references Petitioner(pID)
);

insert into Relationship values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);

create table Station(
sID int primary key, 
Location varchar(25), 
dID int);

insert into Station values
(1,'Lahore',1),
(2,'Karchi',2),
(3,'Multan',3),
(4,'sialkot',4),
(5,'Lahore',5),
(6,'Islmabad',6),
(7,'Peshawar',7),
(8,'Sialkot',8),
(9,'Kashmir',9),
(10,'mian chahnu',10),
(11,'Fiaslabad',11),
(12,'Pindi',12),
(13,'Sawat',13),
(14,'Arifwala',14),
(15,'jammu',15),
(16,'gopal',16),
(17,'sahiwal',17),
(18,'hydrabad',18),
(19,'kasur',19),
(20,'khana',20);

create table Department(
DepartmentID int primary key, 
DepartmentName varchar(25), 
HQ_Location varchar(25), 
InchargeID int);

insert into Department values
(1,'CIA','Islamabad',1),
(2,'FIA','Karachi',2),
(3,'Cyber crime','arifwala',3),
(4,'ELITE Force','pindi',4),
(5,'Dolphin','Karachi',5),
(6,'Exsise','Peshawar',6),
(7,'CIA2','',7),
(8,'FIA2','Islamabad',8),
(9,'Elite force2','pakpatan',9),
(10,'Excise2','kasur',10),
(11,'CIA3','lahore',11),
(12,'FIA3','mian chahnu',12),
(13,'Elite force3','faislabad',13),
(14,'Excise3','karachi',14),
(15,'CIA4','hydrabad',15),
(16,'FIA4','peshawar',16),
(17,'Elite force4','multan',17),
(18,'Excise4','sahiwal',18),
(19,'CIA5','Istanbul',19),
(20,'FIA5','lahari',20);

drop table Officers;
create table Officers(
oID int primary key, 
Fname varchar(20), 
Lname varchar(20), 
DOB date, 
Password char(15), 
Age int, 
Designation char(10), 
CNIC varchar(25),
CaseID int, 
sID int, 
DepartmentID int,
foreign key(sID) references Station(sID),
foreign key(DepartmentID) references Department(DepartmentID)
);
alter table officers alter column CNIC varchar(25);
insert into Officers values
(1,'agha','Afridi','1970-01-01','whatismyname','30','SHO','10008-0100170512-1',10,1,1),
(2,'ali','aslam','1970-01-02','whatismyname_','29','SSP','10008-0100170512-1',11,2,2),
(3,'idrees','khan','1970-01-03','_whatismyname','32','SP','10001-0100170512-1',12,3,3),
(4,'mani','bhatti','1970-02-04','whatismy-name','34','ASP','10002-0100170512-1',13,4,4),
(5,'absar','bhatti','1970-01-05','whatis-myname','20','DPO','10003-0190170512-1',14,5,5),
(6,'saqib','Afridi','1970-04-06','what-ismyname','30','DIG','10004-0109170512-1',15,6,6),
(7,'khalid','Afridi','1970-08-07','whatismyname-','20','IG','10020-0100170512-1',16,7,7),
(8,'hassan','Malik','1970-07-08','-whatismyname','22','SHO','10005-0170170512-1',17,8,8),
(9,'jasem','Malik','1970-06-09','whatismyname','21','SHO','10004-0106170512-1',18,9,9),
(10,'arsal','Malik','1970-02-10','/whatismyname/','21','IG','10000-0107170512-1',19,10,10),
(11,'akbar','Malik','1970-06-11','/whatismyname','22','IG','20008-0108170512-1',20,11,11),
(12,'arslan','Malik','1970-05-12','whatismyname/','19','IG','30008-0170170512-1',21,12,12),
(13,'arshad','Malik','1970-03-13','whatismyname.','32','SHO','40008-0700170512-1',22,13,13),
(14,'ahmed','Malik','1970-01-14','/.whatismyname','33','DIG','50008-0600170512-1',23,14,14),
(15,'ozair','Afridi','1970-05-15','//whatismyname','20','SP','60008-0500170512-1',24,15,15),
(16,'ansab','Afridi','1970-02-16','whatismyname//','34','SHO','70008-4100170512-1',25,16,16),
(17,'jahanzeib','Afridi','1970-04-17','whatismyname;','36','SP','70808-3100170512-1',26,17,17),
(18,'waris','Afridi','1970-03-18','whatismyname:','36','SHO','10308-3100170512-1',27,18,18),
(19,'rizwan','Afridi','1970-02-19','whatismyname1','23','SHO','10048-2100170512-1',28,19,19),
(20,'waqas','Afridi','1970-02-20','whatismyname2','27','DPO','10068-1100170512-1',29,20,20);

/*Execute after inserting data into department*/
ALTER TABLE Department
add FOREIGN KEY (InchargeID) REFERENCES Officers(oID);

create table Cases(
CaseID int primary key, 
oID int, 
Description varchar(25), 
Area varchar(20), 
Reg_Date date, 
proID int, 
evidenceID int, 
petitionerID int, 
victimID int, 
ViolationID int,
foreign key(oID) references officers(oID),
foreign key(proID) references Prosecuter(proID),
foreign key(evidenceID) references evidence(eID),
foreign key(petitionerID) references Petitioner(pID),
foreign key(victimID) references Victim(vID),
foreign key(violationID) references violation(violationID)
);

insert into cases values
(10,1,'Murder','Lahore Chung','2019-6-23',1,1,1,1,1),
(11,2,'Rape','chaburji','2019-6-23',2,2,2,2,2),
(12,3,'Burglary','pind dadarkhan','2019-6-23',3,3,3,3,3),
(13,4,'Hit and run','vihari','2019-6-23',4,4,4,4,4),
(14,5,'Divorce','kacha','2019-6-23',5,5,5,5,5),
(15,6,'LandMafia','DHA','2019-6-23',6,6,6,6,6),
(16,7,'Electricity Chori','walton','2019-6-23',7,7,7,7,7),
(17,8,'Gas Chori','cantt','2019-6-23',8,8,8,8,8),
(18,9,'Bakri Chori','nishat','2019-6-23',9,9,9,9,9),
(19,10,'Gattar Chori','nala ganda','2019-6-23',10,10,10,10,10),
(20,11,'Car theft','rohi','2019-6-23',11,11,11,11,11),
(21,12,'CyberCrime','ammar saddu','2019-6-23',12,12,12,12,12),
(22,13,'Harassment','Char pind','2019-6-23',13,13,13,13,13),
(23,14,'Stalking','jail road','2019-6-23',14,14,14,14,14),
(24,15,'Forced Marriage','lohari gate','2019-6-23',15,15,15,15,15),
(25,16,'Kidnapping','chaha fikaa place','2019-6-23',16,16,16,16,16),
(26,17,'Child Labour','ichra','2019-6-23',17,17,17,17,17),
(27,18,'Child Marriage','kamaha','2019-6-23',18,18,18,18,18),
(28,19,'Money Laundering','walton','2019-6-23',19,19,19,19,19),
(29,20,'Gambling','ichra','2019-6-23',20,20,20,20,20);

ALTER TABLE officers
add FOREIGN KEY (caseID) REFERENCES cases(caseID);

create table Registered(
CaseID int, 
sID int,
primary key(CaseID,sID),
foreign key(CaseID) references cases(caseID),
foreign key(sID) references station(sID)
);

insert into Registered values
(10,1),
(11,2),
(12,3),
(13,4),
(14,5),
(15,6),
(16,7),
(17,8),
(18,9),
(19,10),
(20,11),
(21,12),
(22,13),
(23,14),
(24,15),
(25,16),
(26,17),
(27,18),
(28,19),
(29,20);

create table Involved(
CriminalID int, 
CaseID int,
primary key(CaseID,CriminalID),
foreign key(caseID) references cases(CaseID),
foreign key(CriminalID) references criminal(criminalID)
);

insert into involved(caseId,CriminalID) values
(10,1),
(11,2),
(12,3),
(13,4),
(14,5),
(15,6),
(16,7),
(17,8),
(18,9),
(19,10),
(20,11),
(21,12),
(22,13),
(23,14),
(24,15),
(25,16),
(26,17),
(27,18),
(28,19),
(29,20);

create table Arrested(
oID int,
CriminalID int, 
primary key(oID,CriminalID),
foreign key(oID) references officers(oID),
foreign key(CriminalID) references criminal(criminalID)
);

insert into Arrested values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20);

/*Retrieve all information about a specific petitioner using their ID*/
SELECT * FROM petitioner WHERE pID = 8;

/* Find the court and rank of a prosecutor with a specific CNIC*/

SELECT court, Designation FROM Prosecuter WHERE CNIC = '11122-0100170512-1';

/*  List all cases involving a specific criminal*/
SELECT  *  FROM Involved
JOIN Cases ON Involved.CaseID = Cases.CaseID
WHERE CriminalID = 6;

/* Update the age of a victim with a specific ID */
UPDATE Victim SET age = 30 WHERE vID = 14;

/* Retrieve information about all evidence in a specific case 
SELECT * FROM Evidence WHERE CaseID = 7;*/

/* List all arrested criminals and their details */
SELECT * FROM Arrested
JOIN Criminal ON Arrested.CriminalID = Criminal.CriminalID;

/*  Find officers who are assigned to a specific department */
SELECT * FROM Officers WHERE DepartmentID = 4;

/* Count the number of cases involving a specific violation */
SELECT COUNT(*) FROM Cases WHERE ViolationID = 19;

/*Retrieve information about a case, including details of the prosecutor, and the officer assigned*/
SELECT
    Cases.CaseID,
    Cases.Description AS CaseDescription,
    Prosecuter.Fname AS ProsecutorAssigned,
    Petitioner.Fname AS PetitionerAssigned,
    Officers.Fname AS OfficerAssigned
FROM Cases
JOIN Prosecuter ON Cases.proID = Prosecuter.proID
JOIN Petitioner ON Cases.petitionerID = Petitioner.pID
JOIN Officers ON Cases.oID = Officers.oID;

/* Find the total number of cases registered at each station*/

SELECT
    Station.sID,
    Station.Location,
    COUNT(Registered.CaseID) AS TotalCases
FROM Station
LEFT JOIN Registered ON Station.sID = Registered.sID
GROUP BY Station.sID, Station.Location;

/*List the top 5 prosecutors based on the number of cases they are handling*/

SELECT
    Prosecuter.proID,
    Prosecuter.Fname,
    Prosecuter.Lname,
    COUNT(Cases.CaseID) AS TotalCases
FROM Prosecuter
LEFT JOIN Cases ON Prosecuter.proID = Cases.proID
GROUP BY Prosecuter.proID, Prosecuter.Fname, Prosecuter.Lname
ORDER BY TotalCases DESC
LIMIT 5;

/* Retrieve a list of criminal names along with the total number of cases each criminal is involved in */
create view Crimimal_involved as SELECT
    Criminal.CriminalID,
    Criminal.Name,
    COUNT(Involved.CaseID) AS TotalCases
FROM Criminal
 LEFT JOIN Involved ON Criminal.CriminalID = Involved.CriminalID
GROUP BY Criminal.CriminalID, Criminal.Name
ORDER BY TotalCases DESC;


select * from Crimimal_involved;


/*Retrieve criminal and prosecutor assigned to it*/
CREATE VIEW criminal_prosecuter AS
SELECT C.ViolationID, cr.Name as CriminalName ,P.Fname as ProsecutorName, P.CNIC as ProsecuterCNIC
FROM Cases C
JOIN Criminal cr ON C.ViolationID = cr.ViolationID
JOIN Prosecuter P ON C.proID = P.proID; 

select * from  criminal_prosecuter;


/* Retrieve Prosecutor and Evidence it have found along with its location*/
CREATE VIEW  Prosecutor_EvidenceItem AS
SELECT P.Fname as ProsecuterName, P.court as CourtName,E.Location as EvidenceLocation,E.Item as EvidenceItem
FROM 
Cases C 
JOIN
Prosecuter p 
On C.proID=P.proID
join evidence E ON C.evidenceID = E.eID;

SELECT * FROM Prosecutor_EvidenceItem;

/*Retrieving Evidence and Violation Description*/

CREATE VIEW  Evidence_Violation AS
SELECT  E.eID as EvidenceId,V.Description as VoilationDescription
FROM 
Cases C
JOIN
Evidence E
On C.evidenceID=E.eID
JOIN violation V
ON C.ViolationID = V.ViolationID;














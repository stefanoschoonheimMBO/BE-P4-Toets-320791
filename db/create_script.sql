-- Step: 01
-- Goal: create database
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            1-06-2023      Stefano Schoonheim            new          
-- =============================================================================
drop database if exists `Mvc-2209b-P4-Toets`;
create database if not exists `Mvc-2209b-P4-Toets`;
use `Mvc-2209b-P4-Toets`; 

-- Step: 02
-- Goal: create table Examen
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            1-06-2023      Stefano Schoonheim            new          
-- =============================================================================

drop table if exists Examen;
create table if not exists Examen (
Id TINYINT UNSIGNED not null auto_increment,
StudentId TINYINT UNSIGNED not null,
Rijschool varchar(50) not null,
Stad varchar(50) not null,
Rijbewijscategorie varchar(50) not null,
Datum varchar(12) not null,
Uitslag varchar(10) not null,
IsActief bit not null default 1,
DatumAanGemaakt datetime(6) not null,
DatumGewijzigd datetime(6) not null,
CONSTRAINT primary key CLUSTERED(Id)
) engine=InnoDB;

-- Step: 03
-- Goal: create table ExamenPerExaminator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            1-06-2023      Stefano Schoonheim            new          
-- =============================================================================

drop table if exists ExamenPerExaminator;
create table if not exists ExamenPerExaminator (
Id TINYINT UNSIGNED not null auto_increment,
ExamenId TINYINT UNSIGNED not null,
ExaminatorId TINYINT UNSIGNED not null,
IsActief bit not null default 1,
DatumAanGemaakt datetime(6) not null,
DatumGewijzigd datetime(6) not null,
CONSTRAINT   PK_ExamenPerExamintor_Id   PRIMARY KEY CLUSTERED(Id),
foreign key (ExamenId) references Examen(Id)
) engine=InnoDB;

-- Step: 04
-- Goal: create table Examinator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            1-06-2023      Stefano Schoonheim            new          
-- =============================================================================

drop table if exists Examinator;
create table if not exists Examinator (
Id TINYINT UNSIGNED not null auto_increment,
Voornaam varchar(30) not null,
Tussenvoegsel varchar(10) not null,
Achternaam varchar(30) not null,
Mobiel varchar(13) not null,
IsActief bit not null default 1,
DatumAanGemaakt datetime(6) not null,
DatumGewijzigd datetime(6) not null,
CONSTRAINT   PK_Examinator_Id   PRIMARY KEY CLUSTERED(Id)
) engine=InnoDB;

-- Step: 06
-- Goal: insert info into the table Examen
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            1-06-2023      Stefano Schoonheim            new          
-- =============================================================================

INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '100234', 'VolGasVooruit', 'Rotterdam', 'B', '03-04-2023', 'Geslaagd', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '123432', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '01-03-2023', 'Geslaagd', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '103234', 'LinksomRechtsom', 'Dordrecht', 'D', '15-05-2023', 'Geslaagd', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '106452', 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '08-05-2023', 'Gezakt', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '17-04-2023', 'Gezakt', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '100333', 'AltijdGeslaagd', 'Dordrecht', 'B', '12-05-2023', 'Geslaagd', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examen (Id,StudentId,Rijschool,Stad,Rijbewijscategorie,Datum,Uitslag,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '124444', 'RijlesVoorJou', 'Rotterdam', 'B', '12-04-2023', 'Geslaagd', 1, SYSDATE(6), SYSDATE(6));

-- Step: 07
-- Goal: insert info into the table ExamenPerExaminator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            1-06-2023      Stefano Schoonheim            new          
-- =============================================================================

INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '1', '3', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '3', '3', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '2', '2', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '4', '1', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '7', '3', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '6', '2', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO ExamenPerExaminator (Id,ExamenId,ExaminatorId,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, '5', '4', 1, SYSDATE(6), SYSDATE(6));

-- Step: 08
-- Goal: insert info into the table Examinator
-- =============================================================================
--  Version       Date:           Author:                     Description: 
-- =============================================================================
--  01            1-06-2023      Stefano Schoonheim            new          
-- =============================================================================

INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Manuel', 'van', 'Meekeren', '06-28493823', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Lissette', 'den', 'Dongen', '06-24383299', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Jurswailly', '', 'Luciano', '06-48293846', 1, SYSDATE(6), SYSDATE(6));
INSERT INTO Examinator (Id,Voornaam,Tussenvoegsel,Achternaam,Mobiel,IsActief,DatumAangemaakt,DatumGewijzigd) 
VALUES (null, 'Naswha', '', 'Salawi', '06-34291219', 1, SYSDATE(6), SYSDATE(6));
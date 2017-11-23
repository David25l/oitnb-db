-- Orange is the new black database.
	DROP DATABASE oitnb;
	CREATE DATABASE oitnb;
	USE oitnb;


-- This table contains the id, name, crime, sentences and gangs of Litchfield inmates.
-- DROP TABLE inmates; 
CREATE TABLE Inmates(
inmate_id INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(50) NOT NULL,
CRIME VARCHAR(250) NOT NULL,
SENTENCE INT
);

-- This table contains all the Litchfield staff
--  DROP TABLE staff;
CREATE TABLE Staff(
id INT PRIMARY KEY AUTO_INCREMENT,
NAME VARCHAR(50) NOT NULL, 
JOB VARCHAR(50) NOT NULL,
DEPARTAMENT VARCHAR(50) NOT NULL
); 

-- This table contains all the gangs inside Litchfield. 
-- DROP TABLE Gangs;
CREATE TABLE Gangs(
gang_id INT,
inmate_id INT,
GANG VARCHAR(50) NOT NULL,
FOREIGN KEY (inmate_id) REFERENCES Inmates(inmate_id)
);

SHOW TABLES;
 
INSERT INTO Inmates VALUES (1240, 'Chapman, Piper', 'drug trafficking', '10'), 
(NULL, 'Vause, Alex', 'drug trafficking', '10'),
(NULL, 'Morello, Lorna', 'mail order fraud, harassment, violation of restraining order, attempted murder', '8'), 
(NULL, 'Nicholson, Nicky', 'breaking and entering, DUI, drug possession (heroin)', '7'),
(NULL, 'Reznikov, Galina "Red"', 'organized crime, involvement with the Russian mafia, took the fall for Russian Mafia, several bodies found in her freezer', '20'),
(NULL, 'Jefferson, Tasha "Taystee"', 'drug trafficking', '8'),
(NULL, 'Warren, Suzanne "Crazy Eyes"', 'kidnapping, involuntary manslaughter of a minor', '7'),
(NULL, 'Diaz, Dayanara', 'drug related charges', '5'),
(NULL, 'Washington, Poussey', 'drug possession, tresspassing, minor repeated issues', '5'),
(NULL, 'Mendoza, Gloria', 'EBT fraud', '5'),
(NULL, 'Black, Carrie "Big Boo"', 'presumably felony theft/fraud', '6'),
(NULL, 'Doggett, Tiffany "Pennsatucky"', 'murder (shot and killed nurse at abortion clinic)', '40'),
(NULL, 'Watson, Janae', 'armed robbery', '5'),
(NULL, 'Taylor, Leanne', 'drug possession', '8'),
(NULL, 'Romano, Norma', 'murder (pushed cult leader off a cliff)', '35'),
(NULL, 'DeMarco, Anita', 'unknown', '8'),
(NULL, 'Gonzales, Marisol "Flaca"', 'fraud, drug related charges', '6'),
(NULL, 'Hayes, Cindy "Black Cindy"', 'felony theft (stole using position within TSA as a cover)', '5'),
(NULL, 'Ramos, Maritza', 'grand theft auto', '6'),
(NULL, 'Ruiz, Maria', 'drug related charges', '8'),
(NULL, 'Murphy, Gina', 'embezzlement', '15'),
(NULL, 'Burset, Sophia', 'credit card fraud', '10'),
(NULL, 'Diaz, Aleida', 'drug related charges, drug manufacturing', '10'),
(NULL, 'Jones, Erica "Yoga Jones"', 'manslaughter (mistook an 8-year-old boy for a deer and shot him while drunk)', '30'),
(NULL, 'Ingalls, Sister Jane', 'trespassing (protesting at a nuclear testing facility)', '8'),
(NULL, 'Soso, Brook', 'political protest', '4'),
(NULL, 'Rice, Angie', 'presumably drug possession', '5'),
(NULL, 'Chang, Mei', 'organized crime', '15'),
(NULL, 'Cisneros, Rosa "Miss Rosa"', 'bank robbery', '50'),
(NULL, 'Pelage, Claudette "Miss Claudette"', 'murder (stabbed customer due to assaulting an employee), human trafficking', '50'),
(NULL, 'Parker, Yvonne "Vee"', 'drug dealing (heroin)', '10'),
(NULL, 'Miller, Tricia', 'theft, drug possession', '8'),
(NULL, 'Flores, Blanca', 'unknown - potentially killing her employer or theft', '10'),
(NULL, 'Whitehill, Lolly', 'Resisting Arrest, disorderly conduct, assualting a police officer', '5'),
(NULL, 'King, Judy', 'tax evasion', '3'),
(NULL, 'Carlin, Stella', 'Being hot', '10'),
(NULL, 'Kukudio, Maureen', 'manslaughter', '15'),
(NULL, 'Ginsberg', 'money laundering', '10'),
(NULL, 'Epps, Brandy', '', ''),
(NULL, 'Aziza, Carmen', '', ''),
(NULL,'Valdez, Annie', '', ''),
(NULL,'Abdullah, Alison', '', ''),
(NULL, 'Cabrera', '', ''),
(NULL, 'Gerrman', '', ''),
(NULL, 'Van Maela, Helen', '', ''),
(NULL, 'Brasil, Ines', '', ''),
(NULL, 'Lerman, Irma', '', ''),
(NULL, 'Babson, Jeanie', '', ''),
(NULL, 'Cooke, Jayne', '', ''),
(NULL, 'Guerrera, Lea', '', ''),
(NULL, 'Leanne, Taylor', '', ''),
(NULL, 'Cavanaugh, Jimmy', '', ''),
(NULL, 'Digore, Jennifer', '', ''),
(NULL, 'Fisher, Loretta', '', ''),
(NULL, 'Kasey, Sankey', '', ''),
(NULL, 'Digori, Jennifer', '', ''),
(NULL, 'Guerrera, Lea', '', ''),
(NULL, 'Carreras, Michelle', '',''),
(NULL, 'Valduto, Mercy', '', ''),
(NULL, 'Randolita', '', ''),
(NULL, 'Pell, Reema', '', ''),
(NULL, 'Boyle, Rhea', '', ''),
(NULL, 'Rhonda', '', ''),
(NULL, 'Dwight, Alana', '', ''),
(NULL, 'Hapakuka, Stephanie', '', '');

SELECT * FROM Inmates;

INSERT INTO Gangs VALUES 
(1, 1240,'The Suburbs'),
(1, 1241,'The Suburbs'),
(1, 1242,'The Suburbs'),
(1, 1243,'The Suburbs'),
(1, 1250,'The Suburbs'),
(1, 1251,'The Suburbs'),
(1, 1253,'The Suburbs'),
(1, 1260,'The Suburbs'),
(1, 1263,'The Suburbs'),
(1, 1266,'The Suburbs'),
(1, 1273,'The Suburbs'),
(1, 1275,'The Suburbs'),
(1, 1276,'The Suburbs'),
(1, 1277,'The Suburbs'),
(2, 1245,'The Ghetto'),
(2, 1246,'The Ghetto'),
(2, 1248,'The Ghetto'),
(2, 1252,'The Ghetto'),
(2, 1257,'The Ghetto'),
(2, 1265,'The Ghetto'),
(2, 1274,'The Ghetto'),
(3, 1247, 'The Spanish Harlem'),
(3, 1249, 'The Spanish Harlem'),
(3, 1256, 'The Spanish Harlem'),
(3, 1258, 'The Spanish Harlem'),
(3, 1259, 'The Spanish Harlem'),
(3, 1262, 'The Spanish Harlem'),
(3, 1272, 'The Spanish Harlem'),
(4, 1244,'The Golden Girls'),
(4, 1268,'The Golden Girls'),
(4, 1269,'The Golden Girls'),
(4, 1254,'The Golden Girls'),
(4, 1255,'The Golden Girls'),
(4, 1254,'The Golden Girls'),
(5, 1267, 'The Others'),
(5, 1261, 'The Others'),
(6, 1270,'The Deceased'),
(6, 1271,'The Deceased');

SELECT * FROM Gangs;

-- SUBQUERY INMATES CON MENOR SENTENCIA
SELECT inmate_id AS INMATE_ID, NAME, SENTENCE AS SENTENCE_YEARS  
FROM Inmates
WHERE SENTENCE = (SELECT MIN(SENTENCE) FROM Inmates);

-- SUBQUERY INMATES CON MAYOR SENTENCIA 
SELECT inmate_id AS INMATE_ID, NAME, SENTENCE AS SENTENCE_YEARS  
FROM Inmates
WHERE SENTENCE = (SELECT MAX(SENTENCE) FROM Inmates);

-- SUBQUERY INMATES CON SENTENCIA PARECIDA A 
SELECT inmate_id AS INMATE_ID, NAME, SENTENCE AS SENTENCE_YEARS  
FROM Inmates
WHERE SENTENCE LIKE '%5%';

-- INNER JOIN
SELECT Inmates.inmate_id AS INMATE_ID, Inmates.NAME, Gangs.gang_id AS GANG_ID, Gangs.GANG
FROM Inmates
INNER JOIN Gangs
ON Inmates.inmate_id = Gangs.inmate_id
ORDER BY Inmates.inmate_id ASC; 

-- COUNT: TOTAL INMATES
SELECT COUNT(inmate_id) AS TOTAL_OF_INMATES FROM Inmates;

-- COUNT: TOTAL OF INMATES IN A SPECIFIED GANG ID 
SELECT COUNT(inmate_id) AS INMATES, GANG FROM Gangs
WHERE Gangs.gang_id = 1;

-- STORED PROCEDURE THAT COUNTS EVERY INMATE IN THE 6 GANGS 

-- DROP PROCEDURE TotalInmatesPerGang;
DELIMITER $$
CREATE PROCEDURE TotalInmatesPerGang(
IN pattern VARCHAR(255),
OUT theSuburbs INT,
OUT theGhetto INT,
OUT spanishHarlem INT,
OUT goldenGirls INT,
OUT theOthers INT,
OUT theDeceased INT)
	BEGIN
		-- The Suburbs
		SELECT COUNT(*) INTO theSuburbs
		FROM Gangs
		WHERE gang_id = 1;
		
		-- The Ghetto
		SELECT COUNT(*) INTO theGhetto
		FROM Gangs
		WHERE gang_id = 2;
		
		-- The Spanish Harlem
		SELECT COUNT(*) INTO spanishHarlem
		FROM Gangs
		WHERE gang_id = 3;
        
		-- The Golden Girls
		SELECT COUNT(*) INTO goldenGirls
		FROM Gangs
		WHERE gang_id = 4;
        
		-- The Others
		SELECT COUNT(*) INTO theOthers
		FROM Gangs
		WHERE gang_id = 5;
		
		-- The Deceased
		SELECT COUNT(*) INTO theDeceased
		FROM Gangs
		WHERE gang_id = 6;
	END $$
DELIMITER ; 

SET @tS = 0, @tG = 0, @sH = 0, @gG = 0, @tO = 0, @tD = 0;  
CALL TotalInmatesPerGang('Ar', @tS, @tG, @sH ,@gG ,@tO, @tD);
SELECT @tS AS THE_SUBURBS , @tG AS THE_GHETTO, @sH AS SPANISH_HARLEM, @gG AS GOLDEN_GIRLS, @tO AS THE_OTHERS, @tD AS THE_DECEASED; 
-- CALL TotalInmatesPerGang();

DROP PROCEDURE TotalInmatesPerGang;
SHOW PROCEDURE STATUS WHERE db = 'oitnb';

DELETE FROM inmates
WHERE inmate_id = '1270';

UPDATE inmates
SET NAME='Hottie, Stella'
WHERE NAME='Carlin, Stella';
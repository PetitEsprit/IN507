CREATE TABLE Joueurs(
	nom VARCHAR(30) NOT NULL,
	prenom VARCHAR(30) NOT NULL,
	age INT NOT NULL,
	nationalite VARCHAR(30) NOT NULL,
	PRIMARY KEY (nom)
);

CREATE TABLE Rencontre(
	nomgagnant VARCHAR(30),
	nomperdant VARCHAR(30),
	lieutournoi VARCHAR(30),
	annee INT,
	score VARCHAR(15),
	PRIMARY KEY (nomgagnant, nomperdant, lieutournoi, annee),
	FOREIGN KEY (nomgagnant) REFERENCES Joueurs (nom),
	FOREIGN KEY (nomperdant) REFERENCES Joueurs (nom)
);

CREATE TABLE Sponsor(
	nom VARCHAR(30) NOT NULL,
	lieutournoi VARCHAR(30) NOT NULL,
	annee INT NOT NULL,
	adresse VARCHAR(30) NOT NULL,
	montant INT NOT NULL,
	PRIMARY KEY (nom, lieutournoi, annee)
);



CREATE TABLE Gain(
	nomjoueur VARCHAR(30),
	nomsponsor VARCHAR(30),
	lieutournoi VARCHAR(30),
	annee INT,
	rang INT,
	prime INT,
	PRIMARY KEY (nomjoueur, lieutournoi, annee),
	FOREIGN KEY (nomjoueur) REFERENCES Joueurs(nom),
	FOREIGN KEY (nomsponsor, lieutournoi, annee) REFERENCES Sponsor(nom, lieutournoi, annee)
);

INSERT INTO Joueurs VALUES
	('Federer', 'Roger', 34, 'suisse'),
    ('Nadal', 'Raphael', 33, 'espagne'),
    ('Djokovic', 'Novak', 32, 'belgrade'),
    ('Murray', 'Andy', 32, 'royaume-uni'),
    ('Soederling', 'Robin', 35,'suede'),
    ('Berdych', 'Tomas', 34, 'republique tcheque');

INSERT INTO Sponsor VALUES
	('Peugeot', 'Roland-Garros', 2010, 'Paris', 4000),
    ('Wilson', 'Flushing-Meadows', 2011, 'New-York' , 7000),
    ('IBM', 'Australie', 2011, 'Melbourne' , 2000);

INSERT INTO Rencontre VALUES
	('Djokovic', 'Murray', 'Australie', 2011, '6/4-6/2-6/3'),
    ('Nadal', 'Federer', 'Roland-Garros', 2011, '7/5-7/6-5/7-6/1'),
    ('Djokovic', 'Nadal', 'Winbledon', 2011, '6/4-6/1-1/6-6/3'),
    ('Djokovic', 'Nadal', 'Flushing Meadows', 2011, '6/2-6/4-6/7-6/1'),
    ('Federer', 'Murray', 'Australie', 2010, '6/3-6/4-7/6'),
    ('Nadal', 'Soederling', 'Roland-Garros', 2010, '6/4-6/2-6/4'),
    ('Nadal', 'Berdych', 'Winbledon', 2010, '6/3-7/5-6/4'),
    ('Nadal', 'Djokovic', 'Flushing Meadows', 2010, '6/4-5/7-6/4-6/2');

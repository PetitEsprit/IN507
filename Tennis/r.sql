#
SELECT nom,prenom FROM `Joueurs` WHERE prenom="Roger";
#
SELECT lieutournoi AS tournoi , annee FROM `Rencontre`
WHERE lieutournoi = "Roland-Garros";
#
SELECT DISTINCT J.nom, J.prenom FROM `Rencontre` AS R, `Joueurs` AS J
WHERE R.nomgagnant = J.nom AND R.lieutournoi = "Roland-Garros";
#
SELECT DISTINCT nom FROM `Sponsor` WHERE adresse = 'Paris';
#
SELECT J.nom, J.prenom FROM `Sponsor` AS S, `Rencontre` AS R, `Joueurs` AS J
WHERE S.lieutournoi = R.lieutournoi AND S.annee = R.annee AND R.nomgagnant = J.nom
AND S.nom = 'BNP-Paribas';
#########
SELECT DISTINCT nomgagnant FROM `Rencontre`
UNION
SELECT DISTINCT nomperdant FROM `Rencontre`
#
SELECT DISTINCT nomjoueur FROM `Gain`
WHERE lieutournoi='Winbledon'
#
SELECT nomgagnant FROM `Rencontre` WHERE nomgagnant NOT IN (SELECT nomperdant FROM `Rencontre`)
#
SELECT nomjoueur FROM `Gain`
WHERE nomjoueur NOT IN
(SELECT nomjoueur FROM `Gain` WHERE prime < 1000000)
#
SELECT COUNT(lieutournoi) AS nbmatchs FROM `Rencontre`
WHERE lieutournoi = 'US Open'
#
SELECT SUM(prime) AS GrossMoulahNadalPosay FROM `Gain` WHERE nomjoueur = 'Nadal'
#
SELECT nomjoueur, SUM(prime) AS gaintotal FROM `Gain` GROUP BY nomjoueur HAVING gaintotal >= 2000000
#
SELECT Sprime.annee, Sprime.lieutournoi FROM (SELECT lieutournoi, annee, SUM(prime) AS sgain FROM `Gain`
GROUP BY lieutournoi, annee) AS Sprime, (SELECT lieutournoi, annee, SUM(montant) AS smontant FROM `Sponsor`
GROUP BY lieutournoi, annee) AS Ssponsor
WHERE Ssponsor.lieutournoi = Sprime.lieutournoi AND Ssponsor.annee = Sprime.annee
AND Ssponsor.smontant > Sprime.sgain

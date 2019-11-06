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



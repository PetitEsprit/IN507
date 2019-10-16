SELECT e.prenom, e.nom, COUNT(*) AS nb_hospitalisation
FROM soigne s, employe e, hospitalisation h
WHERE e.numero = s.no_docteur AND s.no_malade = h.no_malade
GROUP BY e.prenom, e.nom
UNION
SELECT e.prenom, e.nom, 0 AS nb_hospitalisation
FROM employe e, docteur d
WHERE e.numero = d.numero AND d.numero NOT IN
(SELECT s.no_docteur
FROM hospitalisation h, soigne s WHERE h.no_malade = s.no_malade)

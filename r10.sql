SELECT e.prenom, e.nom
FROM soigne s, employe e
WHERE s.no_docteur NOT IN(
	SELECT no_docteur
    FROM soigne s, hospitalisation h WHERE s.no_malade = h.no_malade) AND e.numero = s.no_docteur
GROUP BY no_docteur
ORDER BY nom

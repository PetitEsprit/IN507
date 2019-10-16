SELECT e.nom, e.prenom
FROM employe e
WHERE NOT EXISTS(
	SELECT *
    FROM service s
    WHERE NOT EXISTS(
        SELECT * FROM soigne so, hospitalisation h
   		WHERE so.no_malade = h.no_malade AND s.code = h.code_service AND so.no_docteur = e.numero)
)

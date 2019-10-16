SELECT e.nom, e.prenom
FROM employe e, soigne s, hospitalisation h
WHERE e.numero = s.no_docteur AND s.no_docteur = h.no_malade
GROUP BY e.nom, e.prenom
HAVING COUNT (DISTINCT h.code_service) = (SELECT COUNT(*) FROM service);

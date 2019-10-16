SELECT nom, COUNT (DISTINCT i.numero)/ COUNT (DISTINCT m.numero)
FROM service s, infirmier i, hospitalisation h
WHERE s.code = h.code_service and s.code = i.code_service
GROUP BY s.nom;

SELECT service.code, CAST(AVG(chambre.nb_lits) AS decimal(10,1)) FROM `service`, `chambre`
WHERE chambre.code_service = service.code AND service.batiment = "A"
GROUP BY chambre.code_service

SELECT infirmier.code_service, AVG(infirmier.salaire) FROM `infirmier`
GROUP BY infirmier.code_service

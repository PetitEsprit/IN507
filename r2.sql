SELECT employe.prenom,employe.nom FROM `employe`,`infirmier`
WHERE employe.numero = infirmier.numero 
AND infirmier.rotation = "NUIT"
ORDER BY employe.nom ASC

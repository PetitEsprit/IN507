SELECT chambre.no_chambre, hospitalisation.lit, service.nom, malade.prenom, malade.nom, malade.mutuelle FROM `hospitalisation`, `chambre`, `malade`, `service` 
WHERE hospitalisation.no_malade = malade.numero AND chambre.code_service = service.code AND hospitalisation.code_service = chambre.code_service
AND chambre.no_chambre = hospitalisation.no_chambre
AND service.batiment = "B"
AND malade.mutuelle LIKE "MN%"

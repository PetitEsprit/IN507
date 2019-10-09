SELECT service.nom, service.batiment, employe.prenom, employe.nom, docteur.specialite FROM `service`, `docteur`, `employe`
WHERE docteur.numero = service.directeur AND docteur.numero = employe.numero

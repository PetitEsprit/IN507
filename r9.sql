SELECT DISTINCT employe.prenom, employe.nom FROM `soigne`, `docteur`,`employe`
WHERE soigne.no_docteur = docteur.numero
AND soigne.no_docteur = employe.numero
ORDER BY employe.nom

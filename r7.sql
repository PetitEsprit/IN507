SELECT malade.numero, malade.nom, malade.prenom, COUNT(soigne.no_docteur) AS nb_soignants ,COUNT(DISTINCT docteur.specialite) AS nb_specialites FROM `docteur`, `soigne`, `malade`
WHERE docteur.numero = soigne.no_docteur AND soigne.no_malade = malade.numero
GROUP BY malade.numero
HAVING nb_soignants > 3
ORDER BY malade.nom ASC

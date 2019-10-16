SELECT nom, (SELECT COUNT(*) FROM infirmier i WHERE i.code_service = s.code)
/ (SELECT COUNT(*) FROM hospitalisation h WHERE h.code_service = s.code) AS rapport_i_sur_m
FROM service s;

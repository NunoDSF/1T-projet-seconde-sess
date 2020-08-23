CREATE PROCEDURE "DBA"."ajoutCollection"(in anom varchar(60),adescription long varchar,aid_categorie INTEGER )                 
BEGIN
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  INSERT INTO collection(nom,description,id_categorie) VALUES (anom,adescription,aid_categorie);
END;

CREATE PROCEDURE "DBA"."ajoutEntit"(in anom varchar(60),adescription long varchar,aid_collection INTEGER )                 
BEGIN
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  INSERT INTO entité(nom,description,id_collection) VALUES (anom,adescription,aid_collection);
END;

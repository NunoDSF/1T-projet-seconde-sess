CREATE PROCEDURE "DBA"."catego"()
result(categorie varchar(60),id_categorie INTEGER )
BEGIN 

    SELECT nom,id_categorie from categorie
end;

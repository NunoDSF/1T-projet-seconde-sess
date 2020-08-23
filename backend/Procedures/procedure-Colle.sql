CREATE PROCEDURE "DBA"."Colle"()
Result (nom VARCHAR(60),description long varchar, nomCateg varchar(60),id_colle INTEGER )
BEGIN 
    SELECT collection.nom, collection.description, categorie.nom ,id_collection
    from collection
    JOIN categorie on collection.id_categorie=categorie.id_categorie
end;

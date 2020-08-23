CREATE PROCEDURE "DBA"."entite"(@id_col integer)
result(nom varchar(60),description long VARCHAR)
BEGIN 
    SELECT nom, description from entité
    where @id_col = id_collection
end;

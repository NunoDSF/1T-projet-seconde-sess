CREATE PROCEDURE "DBA"."http_getCSS"(in url char(255))
// renvoie le contenu de la feuille de style dont le nom (+ extension) est le paramètre url
BEGIN
-- 
  call sa_set_http_header('Content-Type', 'text/css'); // header http
    Call sa_set_http_header('Access-Control-Allow-Origin', '*'); // pas nécessaire si appels depuis le serveur - dangereux en production
	select xp_read_file(dba.getPath() || 'CSS\' || url); // renvoyer fichier css
--
END;
COMMENT ON PROCEDURE "DBA"."http_getCSS" IS 'fournisseur de fichier .css (sous-répertoire CSS du site)';

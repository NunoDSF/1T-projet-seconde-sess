CREATE PROCEDURE "DBA"."http_getPage"(in url char(255))
// renvoie le contenu de la page html dont le nom (SANS extension) est le paramètre url
BEGIN
--
    call sa_set_http_header('Content-Type', 'text/html; charset=utf-8'); // header http
    Call sa_set_http_header('Access-Control-Allow-Origin', '*'); // pas nécessaire si appels depuis le serveur - dangereux en production
	select xp_read_file(dba.getPath() || url || '.html'); // renvoyer page
-- 
END;
COMMENT ON PROCEDURE "DBA"."http_getPage" IS 'fournisseur de fichier .html (racine du site)';

CREATE PROCEDURE "DBA"."http_getIMG"(in url char(255))
// renvoie le contenu de l image/graphique dont le nom (+ extension) est le paramètre url
BEGIN
--
  call sa_set_http_header('Content-Type', 'image/png'); // header http
    Call sa_set_http_header('Access-Control-Allow-Origin', '*'); // pas nécessaire si appels depuis le serveur - dangereux en production
	select xp_read_file(dba.getPath() || 'IMG\' || url);  // renvoyer image
--
END;
COMMENT ON PROCEDURE "DBA"."http_getIMG" IS 'fournisseur de fichier graphique (sous-répertoire IMG du site)';

CREATE SERVICE "ajoutCollection" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call ajoutCollection(:nom,:description,:id_categorie);

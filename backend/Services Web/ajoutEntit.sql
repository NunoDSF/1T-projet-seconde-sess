CREATE SERVICE "ajoutEntit" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call ajoutEntit(:nom,:description,:id_collection);

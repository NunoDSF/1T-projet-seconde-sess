CREATE SERVICE "entite" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call entite(:id);

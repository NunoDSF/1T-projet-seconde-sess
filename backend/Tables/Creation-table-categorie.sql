CREATE TABLE "DBA"."categorie" (
	"id_categorie" INTEGER NOT NULL DEFAULT AUTOINCREMENT UNIQUE,
	"nom" VARCHAR(60) NOT NULL UNIQUE,
	PRIMARY KEY ( "id_categorie" ASC )
) IN "system";

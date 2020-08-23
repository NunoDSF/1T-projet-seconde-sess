CREATE TABLE "DBA"."collection" (
	"id_collection" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"nom" VARCHAR(60) NULL,
	"description" LONG VARCHAR NOT NULL,
	"id_categorie" INTEGER NOT NULL,
	PRIMARY KEY ( "id_collection" ASC )
) IN "system";

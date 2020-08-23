CREATE TABLE "DBA"."entité" (
	"id_entité" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"nom" VARCHAR(60) NULL,
	"description" LONG VARCHAR NOT NULL,
	"id_collection" INTEGER NOT NULL,
	PRIMARY KEY ( "id_entité" ASC )
) IN "system";

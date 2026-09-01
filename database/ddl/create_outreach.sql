CREATE TABLE CMD."Outreach" (
    "ID"                INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL,
    "Activity"          VARCHAR(255) NULL,
    "File Open Date"    TIMESTAMP(0) NULL,
    "Licence Type"      VARCHAR(30) NULL,
    "Inspector"         VARCHAR(255) NULL,
    "Activity Log"      TEXT NULL,
    "Source"            VARCHAR(255) NULL,
    "Facility Name"     VARCHAR(255) NULL,
    "SSMA_TimeStamp"    BYTEA NOT NULL DEFAULT '\x0000000000000001'
);

ALTER TABLE CMD."Outreach"
    ADD CONSTRAINT "Outreach$tblLicenseTypesOutreach"
    FOREIGN KEY ("Licence Type") REFERENCES CMD."tblLicenseTypes" ("LTYLicenceTypeTID");
	
ALTER TABLE CMD."Outreach" ADD CONSTRAINT "Outreach$PrimaryKey" PRIMARY KEY ("ID");

COMMENT ON TABLE CMD."Outreach" IS 'Source: CMD.Outreach';
COMMENT ON COLUMN CMD."Outreach"."ID" IS 'Source: CMD.Outreach.ID';
COMMENT ON COLUMN CMD."Outreach"."Activity" IS 'Source: CMD.Outreach.Activity';
COMMENT ON COLUMN CMD."Outreach"."File Open Date" IS 'Source: CMD.Outreach.File Open Date';
COMMENT ON COLUMN CMD."Outreach"."Licence Type" IS 'Source: CMD.Outreach.Licence Type';
COMMENT ON COLUMN CMD."Outreach"."Inspector" IS 'Source: CMD.Outreach.Inspector';
COMMENT ON COLUMN CMD."Outreach"."Activity Log" IS 'Source: CMD.Outreach.Activity Log';
COMMENT ON COLUMN CMD."Outreach"."Source" IS 'Source: CMD.Outreach.Source';
COMMENT ON COLUMN CMD."Outreach"."Facility Name" IS 'Source: CMD.Outreach.Facility Name';
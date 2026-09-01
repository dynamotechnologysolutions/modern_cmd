CREATE SCHEMA CMD IF NOT EXISTS

CREATE TABLE cmd."Investigation" (
    "ID"                    INTEGER NULL,
    "ID1"                   INTEGER GENERATED ALWAYS AS IDENTITY,
    "Source"                VARCHAR(255) NULL,
    "Joint Investigation"   VARCHAR(255) NULL DEFAULT 'No',
    "File Open Date"        TIMESTAMP(0) NULL,
    "Inspector"             VARCHAR(255) NULL,
    "Source Contact"        VARCHAR(255) NULL,
    "Activity Log"          TEXT NULL,
    "SSMA_TimeStamp"        BYTEA NOT NULL DEFAULT '\x0000000000000001',

    CONSTRAINT "Investigation$PrimaryKey" PRIMARY KEY ("ID1")
);

ALTER TABLE cmd."Investigation"
    ADD CONSTRAINT "Investigation$FacilitiesInvestigation"
    FOREIGN KEY ("ID") REFERENCES cmd."Facilities" ("ID");

COMMENT ON TABLE CMD."Investigation" IS 'Source: CMD_Data_TEST.Investigation';
COMMENT ON COLUMN CMD."Investigation"."ID" IS 'Source: CMD_Data_TEST.Investigation.ID';
COMMENT ON COLUMN CMD."Investigation"."ID1" IS 'Source: CMD_Data_TEST.Investigation.ID1';
COMMENT ON COLUMN CMD."Investigation"."Source" IS 'Source: CMD_Data_TEST.Investigation.Source';
COMMENT ON COLUMN CMD."Investigation"."Joint Investigation" IS 'Source: CMD_Data_TEST.Investigation.Joint Investigation';
COMMENT ON COLUMN CMD."Investigation"."File Open Date" IS 'Source: CMD_Data_TEST.Investigation.File Open Date';
COMMENT ON COLUMN CMD."Investigation"."Inspector" IS 'Source: CMD_Data_TEST.Investigation.Inspector';
COMMENT ON COLUMN CMD."Investigation"."Source Contact" IS 'Source: CMD_Data_TEST.Investigation.Source Contact';
COMMENT ON COLUMN CMD."Investigation"."Activity Log" IS 'Source: CMD_Data_TEST.Investigation.Activity Log';
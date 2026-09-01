CREATE TABLE CMD."Investigation1" (
    "ID1"                                INTEGER NULL,
    "Regulation Section"                 VARCHAR(255) NULL,
    "Compliance Issue"                   VARCHAR(90) NULL,
    "Corrective Action Required"         VARCHAR(255) NULL,
    "Corrective Action Due Date"         TIMESTAMP(0) NULL,
    "Corrective Action Completed Date"   TIMESTAMP(0) NULL,
    "Enforcement Tool"                   VARCHAR(255) NULL,
    "File Disposition"                   VARCHAR(255) NULL,
    "File Close Date"                    TIMESTAMP(0) NULL
);

ALTER TABLE CMD."Investigation1"
    ADD CONSTRAINT "Investigation1$InvestigationInvestigation1"
    FOREIGN KEY ("ID1") REFERENCES CMD."Investigation" ("ID1");

COMMENT ON TABLE CMD."Investigation1" IS 'Source: CMD.Investigation1';
COMMENT ON COLUMN CMD."Investigation1"."ID1" IS 'Source: CMD.Investigation1.ID1';
COMMENT ON COLUMN CMD."Investigation1"."Regulation Section" IS 'Source: CMD.Investigation1.Regulation Section';
COMMENT ON COLUMN CMD."Investigation1"."Compliance Issue" IS 'Source: CMD.Investigation1.Compliance Issue';
COMMENT ON COLUMN CMD."Investigation1"."Corrective Action Required" IS 'Source: CMD.Investigation1.Corrective Action Required';
COMMENT ON COLUMN CMD."Investigation1"."Corrective Action Due Date" IS 'Source: CMD.Investigation1.Corrective Action Due Date';
COMMENT ON COLUMN CMD."Investigation1"."Corrective Action Completed Date" IS 'Source: CMD.Investigation1.Corrective Action Completed Date';
COMMENT ON COLUMN CMD."Investigation1"."Enforcement Tool" IS 'Source: CMD.Investigation1.Enforcement Tool';
COMMENT ON COLUMN CMD."Investigation1"."File Disposition" IS 'Source: CMD.Investigation1.File Disposition';
COMMENT ON COLUMN CMD."Investigation1"."File Close Date" IS 'Source: CMD.Investigation1.File Close Date';
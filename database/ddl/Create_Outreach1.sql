CREATE TABLE CMD."Outreach1" (
    "ID"                                  INTEGER NULL,
    "Regulation Section"                  VARCHAR(255) NULL,
    "Compliance Issue"                    VARCHAR(90) NULL,
    "Corrective Action Required"          VARCHAR(255) NULL,
    "Corrective Action Due Date"          TIMESTAMP(0) NULL,
    "Corrective Action Completed Date"    TIMESTAMP(0) NULL,
    "Enforcement Tool"                    VARCHAR(255) NULL,
    "No of Clients Contacted"             INTEGER NULL,
    "No of Compliant Clients"             INTEGER NULL,
    "Compliance Rate"                     DOUBLE PRECISION NULL,
    "File Disposition"                    VARCHAR(255) NULL,
    "File Close Date"                     TIMESTAMP(0) NULL,
    "SSMA_TimeStamp"                      BYTEA NOT NULL DEFAULT '\x0000000000000001'
);

 ALTER TABLE cmd.Outreach1
      ADD CONSTRAINT "Outreach1$OutreachOutreach1"
      FOREIGN KEY ("ID") REFERENCES cmd."Outreach" ("ID");

COMMENT ON TABLE CMD."Outreach1" IS 'Source: CMD.Outreach1';
COMMENT ON COLUMN CMD."Outreach1"."ID" IS 'Source: CMD.Outreach1.ID';
COMMENT ON COLUMN CMD."Outreach1"."Regulation Section" IS 'Source: CMD.Outreach1.Regulation Section';
COMMENT ON COLUMN CMD."Outreach1"."Compliance Issue" IS 'Source: CMD.Outreach1.Compliance Issue';
COMMENT ON COLUMN CMD."Outreach1"."Corrective Action Required" IS 'Source: CMD.Outreach1.Corrective Action Required';
COMMENT ON COLUMN CMD."Outreach1"."Corrective Action Due Date" IS 'Source: CMD.Outreach1.Corrective Action Due Date';
COMMENT ON COLUMN CMD."Outreach1"."Corrective Action Completed Date" IS 'Source: CMD.Outreach1.Corrective Action Completed Date';
COMMENT ON COLUMN CMD."Outreach1"."Enforcement Tool" IS 'Source: CMD.Outreach1.Enforcement Tool';
COMMENT ON COLUMN CMD."Outreach1"."No of Clients Contacted" IS 'Source: CMD.Outreach1.No of Clients Contacted';
COMMENT ON COLUMN CMD."Outreach1"."No of Compliant Clients" IS 'Source: CMD.Outreach1.No of Compliant Clients';
COMMENT ON COLUMN CMD."Outreach1"."Compliance Rate" IS 'Source: CMD.Outreach1.Compliance Rate';
COMMENT ON COLUMN CMD."Outreach1"."File Disposition" IS 'Source: CMD.Outreach1.File Disposition';
COMMENT ON COLUMN CMD."Outreach1"."File Close Date" IS 'Source: CMD.Outreach1.File Close Date';
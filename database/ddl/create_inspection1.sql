-- ===================================================================
-- Inspection1 table (converted from SQL Server dbo.Inspection1)
-- Column names normalized to use double quotes
-- ===================================================================
CREATE SCHEMA CMD IF NOT EXISTS

CREATE TABLE cmd."Inspection1" (
    "ID1"                                  integer,
    "Regulation Section"                   varchar(255),
    "Compliance Issue"                     varchar(90),
    "Corrective Action Required"           varchar(255),
    "Corrective Action Due Date"           timestamp(0),
    "Corrective Action Completed Date"     timestamp(0),
    "Enforcement Tool"                     varchar(255),
    "File Disposition"                     varchar(255),
    "File Close Date"                      timestamp(0)
);

COMMENT ON COLUMN cmd."Inspection1"."ID1" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[ID1]';
COMMENT ON COLUMN cmd."Inspection1"."Regulation Section" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[Regulation Section]';
COMMENT ON COLUMN cmd."Inspection1"."Compliance Issue" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[Compliance Issue]';
COMMENT ON COLUMN cmd."Inspection1"."Corrective Action Required" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[Corrective Action Required]';
COMMENT ON COLUMN cmd."Inspection1"."Corrective Action Due Date" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[Corrective Action Due Date]';
COMMENT ON COLUMN cmd."Inspection1"."Corrective Action Completed Date" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[Corrective Action Completed Date]';
COMMENT ON COLUMN cmd."Inspection1"."Enforcement Tool" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[Enforcement Tool]';
COMMENT ON COLUMN cmd."Inspection1"."File Disposition" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[File Disposition]';
COMMENT ON COLUMN cmd."Inspection1"."File Close Date" IS 'MS_SSMA_SOURCE: CMD.[Inspection1].[File Close Date]';
COMMENT ON TABLE cmd."Inspection1" IS 'MS_SSMA_SOURCE: CMD.[Inspection1]';
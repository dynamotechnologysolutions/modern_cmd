-- ===================================================================
-- Inspection table (converted from SQL Server dbo.Inspection)
-- Column names normalized to snake_case
-- ===================================================================

CREATE TABLE cmd.inspection (
    id                       INTEGER,
    field1                   VARCHAR(255),
    id1                      INTEGER GENERATED ALWAYS AS IDENTITY,
    source                   VARCHAR(255),
    file_open_date           TIMESTAMP(0),
    inspection_type          VARCHAR(255),
    inspector                TEXT,
    contact                  VARCHAR(255),
    activity_log             TEXT,
    full_compliance          VARCHAR(255),
    ins_joint_inspection_yn  BOOLEAN DEFAULT FALSE,
    CONSTRAINT inspection_pkey PRIMARY KEY (id1)
);

ALTER TABLE cmd.inspection
    ADD CONSTRAINT inspection_facilities_fkey
    FOREIGN KEY (id)
    REFERENCES cmd.facilities (id)
    NOT VALID;

ALTER TABLE cmd.inspection
    VALIDATE CONSTRAINT inspection_facilities_fkey;
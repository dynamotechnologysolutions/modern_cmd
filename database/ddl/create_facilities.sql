-- ===================================================================
-- Facilities table (converted from SQL Server dbo.Facilities)
-- Column names normalized to snake_case
-- ===================================================================

CREATE TABLE cmd.facilities (
    id                INTEGER GENERATED ALWAYS AS IDENTITY,
    lid               VARCHAR(255),
    facility_name     VARCHAR(255),
    dba               VARCHAR(255),
    address           VARCHAR(255),
    city              VARCHAR(255),
    postal            VARCHAR(255),
    contact_person    VARCHAR(255),
    phone             VARCHAR(255),
    email_address     VARCHAR(255),
    type              VARCHAR(30),
    sub_type          VARCHAR(255),
    rha               VARCHAR(255),
    CONSTRAINT facilities_pkey PRIMARY KEY (id)
);

ALTER TABLE cmd.facilities
    ADD CONSTRAINT facilities_type_fkey
    FOREIGN KEY (type)
    REFERENCES cmd.tbl_license_types (lty_licence_type_tid)
    NOT VALID;

ALTER TABLE cmd.facilities
    VALIDATE CONSTRAINT facilities_type_fkey;
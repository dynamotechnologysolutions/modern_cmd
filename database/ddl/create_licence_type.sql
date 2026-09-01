CREATE TABLE CMD."tblLicenseTypes" (
    "LTYLicenceTypeTID"   VARCHAR(30) NOT NULL,

    CONSTRAINT "tblLicenseTypes$PrimaryKey" PRIMARY KEY ("LTYLicenceTypeTID")
);

COMMENT ON TABLE CMD."tblLicenseTypes" IS 'Source: CMD_Data_TEST.tblLicenseTypes';
COMMENT ON COLUMN CMD."tblLicenseTypes"."LTYLicenceTypeTID" IS 'Source: CMD_Data_TEST.tblLicenseTypes.LTYLicenceTypeTID';
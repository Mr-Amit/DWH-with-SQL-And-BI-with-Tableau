Use DataWareHouse;

CREATE TABLE data2016_2017(
WasteProcessorId                   int,
WasteStreamId                      int,
WasteProcessorOutputId             int,
SenderWasteProcessorOutputId       int,
Authority                        varchar(500),
AuthorityId                        int,
Period                           varchar(500),
PeriodId                           int,
WasteStreamTypeId                  int,
WasteStreamType                  varchar(500),
FacilityTypeId                     int,
FacilityType                     varchar(500),
NationalFacilityId                 int,
FacilityName                     varchar(800),
FacilityAddress                  varchar(800),
FacilityPostCode                 varchar(800),
FacilityLicence                  varchar(800),
FacilityCode                     varchar(500),
OutputProcessTypeId              varchar(500),
OutputProcessType                varchar(500),
TotalTonnes                      varchar(500),
MaterialId                       varchar(50),
Material                         varchar(500),
TonnesByMaterial                float,
TonnesFromHHSources             float,
TonnesFromCommercialSources     float,
TonnesFromIndustrialSources     float,
TonnesFromNonHHSources          float,
TonnesFromWfHSources            float,
TonnesFromWnfHSources           float,
UsageId                         float,
Usage                           float,
QuarterlyComments               varchar(500),
MaterialGroup                    varchar(500)
);
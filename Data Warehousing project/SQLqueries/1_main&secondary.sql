USE DataWareHouse;

CREATE TABLE main (
    WasteProcessorId  		int not null,
    WasteProcessorOutputId  	int not null,
    FacilityTypeId  		int,
    FacilityType  		varchar(500),
    NationalFacilityId  	int,
    FacilityName  		varchar(900),
    FacilityAddress  		varchar(2000),
    FacilityPostCode  		varchar(800),
    FacilityLicence  		varchar(800),
    OutputProcessTypeId  	varchar(50),
    OutputProcessType  		varchar(50),	
    MaterialId  		varchar(50) not null,	
    Material  			varchar(500),	
    TonnesByMaterial  		float,	
    TonnesFromHHSources  	float,
    TonnesFromNonHHSources  	float,
    TonnesFromWfHSources  	float,
    TonnesFromWnfHSources  	float,
    UsageId  			int,
    MaterialGroup  		varchar(500),
    FacilityCode  		varchar(500),
    TonnesFromCommercialSources float,
    TonnesFromIndustrialSources float,
    primary key (WasteProcessorId, WasteProcessorOutputId, MaterialId)
);



CREATE TABLE secondary (
    Authority  			varchar(50),
    ONSCode  			varchar(50),
    WasteStreamId  		int not null,
    SenderWasteProcessorOutputId int not null,
    AuthorityId  		int,
    Period  			varchar(50),
    PeriodId  			int,
    WasteStreamTypeId  		int,
    WasteStreamType  		varchar(500),
    Usage  			float,
    QuarterlyComments  		varchar(500),
    primary key			(WasteStreamId, SenderWasteProcessorOutputId)
);

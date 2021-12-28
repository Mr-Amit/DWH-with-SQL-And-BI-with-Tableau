USE DataWareHouse;

CREATE TABLE Stage_main (
    WasteProcessorId  		int,
    WasteProcessorOutputId  	int,
    FacilityTypeId  		int,
    FacilityType  		varchar(500),
    NationalFacilityId  	int,
    FacilityName  		varchar(900),
    FacilityAddress  		varchar(2000),
    FacilityPostCode  		varchar(800),
    FacilityLicence  		varchar(800),
    OutputProcessTypeId  	varchar(50),
    OutputProcessType  		varchar(50),	
    MaterialId  		varchar(50),	
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
);



CREATE TABLE Stage_secondary (
    Authority  			varchar(50),
    ONSCode  			varchar(50),
    WasteStreamId  		int,
    SenderWasteProcessorOutputId int,
    AuthorityId  		int,
    Period  			varchar(50),
    PeriodId  			int,
    WasteStreamTypeId  		int,
    WasteStreamType  		varchar(500),
    Usage  			float,
    QuarterlyComments  		varchar(500),
    
);

INSERT INTO Stage_main(WasteProcessorId  ,   WasteProcessorOutputId  ,FacilityTypeId  ,
			FacilityType  ,NationalFacilityId  	,FacilityName  	,FacilityAddress  	,FacilityPostCode 	,
			FacilityLicence  ,OutputProcessTypeId  ,OutputProcessType  	,	MaterialId  ,	Material  ,	
			TonnesByMaterial  ,	TonnesFromHHSources  ,TonnesFromNonHHSources  ,TonnesFromWfHSources  ,
			TonnesFromWnfHSources  ,UsageId  ,MaterialGroup  ,FacilityCode  ,TonnesFromCommercialSources ,    TonnesFromIndustrialSources)
SELECT WasteProcessorId  ,    WasteProcessorOutputId  ,FacilityTypeId  ,FacilityType  ,NationalFacilityId  	,FacilityName  	,FacilityAddress  	,
	FacilityPostCode  		,FacilityLicence  ,OutputProcessTypeId  ,OutputProcessType  ,	MaterialId  ,	Material  ,	TonnesByMaterial  ,
	TonnesFromHHSources  ,TonnesFromNonHHSources  ,TonnesFromWfHSources  ,TonnesFromWnfHSources  ,UsageId  ,MaterialGroup  ,FacilityCode  ,
	TonnesFromCommercialSources ,    TonnesFromIndustrialSources
FROM MERGE2015_2017;
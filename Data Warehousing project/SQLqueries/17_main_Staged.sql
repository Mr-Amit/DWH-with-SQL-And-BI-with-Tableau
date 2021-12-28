INSERT INTO main(WasteProcessorId  ,   WasteProcessorOutputId  ,FacilityTypeId  ,
			FacilityType  ,NationalFacilityId  	,FacilityName  	,FacilityAddress  	,FacilityPostCode 	,
			FacilityLicence  ,OutputProcessTypeId  ,OutputProcessType  	,	MaterialId  ,	Material  ,	
			TonnesByMaterial  ,	TonnesFromHHSources  ,TonnesFromNonHHSources  ,TonnesFromWfHSources  ,
			TonnesFromWnfHSources  ,UsageId  ,MaterialGroup  ,FacilityCode  ,TonnesFromCommercialSources ,    TonnesFromIndustrialSources)
SELECT WasteProcessorId  ,    WasteProcessorOutputId  ,FacilityTypeId  ,FacilityType  ,NationalFacilityId  	,FacilityName  	,FacilityAddress  	,
	FacilityPostCode  		,FacilityLicence  ,OutputProcessTypeId  ,OutputProcessType  ,	MaterialId  ,	Material  ,	TonnesByMaterial  ,
	TonnesFromHHSources  ,TonnesFromNonHHSources  ,TonnesFromWfHSources  ,TonnesFromWnfHSources  ,UsageId  ,MaterialGroup  ,FacilityCode  ,
	TonnesFromCommercialSources ,    TonnesFromIndustrialSources
FROM Stage_main;
USE DataWareHouse;
MERGE INTO dbo.MERGE2015_2017 AS TGT
USING dbo.data2016_2017 AS SRC
	ON TGT.Period = SRC.Period
WHEN MATCHED THEN
	-- Random expression
	UPDATE SET
		TGT.Authority = SRC.Authority
WHEN NOT MATCHED THEN
	INSERT (WasteProcessorId,WasteStreamId,WasteProcessorOutputId,SenderWasteProcessorOutputId,Authority,
	AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,FacilityTypeId,FacilityType,NationalFacilityId,
	FacilityName,FacilityAddress,FacilityPostCode,FacilityLicence,FacilityCode,OutputProcessTypeId,OutputProcessType,
	TotalTonnes,MaterialId,Material,TonnesByMaterial,TonnesFromHHSources,TonnesFromCommercialSources,
	TonnesFromIndustrialSources,TonnesFromNonHHSources,TonnesFromWfHSources,TonnesFromWnfHSources,UsageId,Usage,QuarterlyComments,MaterialGroup)
	
	VALUES(SRC.WasteProcessorId,SRC.WasteStreamId,SRC.WasteProcessorOutputId,SRC.SenderWasteProcessorOutputId,
	SRC.Authority,SRC.AuthorityId,SRC.Period,SRC.PeriodId,SRC.WasteStreamTypeId,SRC.WasteStreamType,
	SRC.FacilityTypeId,SRC.FacilityType,SRC.NationalFacilityId,SRC.FacilityName,SRC.FacilityAddress,
	SRC.FacilityPostCode,SRC.FacilityLicence,SRC.FacilityCode,SRC.OutputProcessTypeId,SRC.OutputProcessType,
	SRC.TotalTonnes,SRC.MaterialId,SRC.Material,SRC.TonnesByMaterial,SRC.TonnesFromHHSources,
	SRC.TonnesFromCommercialSources,SRC.TonnesFromIndustrialSources,SRC.TonnesFromNonHHSources,
	SRC.TonnesFromWfHSources,SRC.TonnesFromWnfHSources,SRC.UsageId,SRC.Usage,SRC.QuarterlyComments,SRC.MaterialGroup);
UPDATE facts
SET facts.TotalTonnes = main.TonnesByMaterial + main.TonnesFromHHSources + 
	main.TonnesFromNonHHSources + main.TonnesFromWfHSources + 
	main.TonnesFromWnfHSources + main.TonnesFromCommercialSources  +  main.TonnesFromIndustrialSources
FROM facts, main
WHERE facts.WasteProcessorId = main.WasteProcessorId and facts.WasteProcessorOutputId = main.WasteProcessorOutputId
	and facts.MaterialId = main.MaterialId;
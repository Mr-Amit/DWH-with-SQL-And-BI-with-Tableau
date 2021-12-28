USE DataWareHouse;
select FacilityType, WasteStreamType, SUM(TonnesFromHHSources) as TotalTonnesFromHH--, SUM(f.TotalTonnesFrommHH) TotalTonnesFromHH
	from (main m inner join facts f 
		ON m.WasteProcessorId = f.WasteProcessorId
			and f.WasteProcessorOutputId = m.WasteProcessorOutputId	
			and  f.MaterialId = m.MaterialId) 
		
			INNER JOIN secondary s
				ON s.SenderWasteProcessorOutputId = f.SenderWasteProcessorOutputId
				and s.WasteStreamId = f.WasteStreamId
		
		-- m.OutputProcessType = 'Dry recyclate' and m.Material is not null and s.Period is not null and s.Usage is not NULL
																										
		group by FacilityType, WasteStreamType
		Having FacilityType is not NULL
		Order By sum(TonnesFromHHSources) desc;

select Period, Material, SUM(TotalTonnes) TotalTonnes, sum(rn) rn
FROM
	(select s.Period, m.Material, SUM(f.TotalTonnes) TotalTonnes, ROW_NUMBER() OVER (PARTITION BY s.period ORDER by sum(f.TotalTonnes) DESC)
             AS rn
	from (main m
			INNER JOIN facts f 
				ON m.WasteProcessorId = f.WasteProcessorId
						and f.WasteProcessorOutputId = m.WasteProcessorOutputId	
						and  f.MaterialId = m.MaterialId)
				INNER JOIN secondary s
					ON s.SenderWasteProcessorOutputId = f.SenderWasteProcessorOutputId
						and s.WasteStreamId = f.WasteStreamId
	
	where m.OutputProcessType = 'Dry recyclate' and m.Material is not null
	group by s.Period,m.Material
	--order by s.Period, sum(f.TotalTonnes) desc--sum(f.TotalTonnes) desc;
	) as tmp
WHERE rn <= 5
group by Period, Material
ORDER BY period; 

USE DataWareHouse;
select Period as Quarters, tmp.Material, SUM(TotalTonnes) TotalTonnes, sum(rn) rn
FROM
	(select s.Usage, s.Period, m.Material, SUM(f.TotalTonnes) TotalTonnes, ROW_NUMBER() OVER (PARTITION BY s.period ORDER by sum(f.TotalTonnes) DESC) AS rn
	from (main m inner join facts f 
		ON m.WasteProcessorId = f.WasteProcessorId
			and f.WasteProcessorOutputId = m.WasteProcessorOutputId	
			and  f.MaterialId = m.MaterialId)
		
			INNER JOIN secondary s
				ON s.SenderWasteProcessorOutputId = f.SenderWasteProcessorOutputId
				and s.WasteStreamId = f.WasteStreamId
		where m.OutputProcessType = 'Dry recyclate' and m.Material is not null and s.Period is not null and s.Usage is not NULL
	
		group by ROLLUP(s.usage, s.Period), m.Material) as tmp
WHERE rn <= 5 and Usage is not NULL
--group by Usage, Period, Material
GROUP BY Usage, Period, Material
ORDER BY Usage, Period, SUM(TotalTonnes) desc;
		
		
		--ORDER BY Usage, period, TotalTonnes desc; 
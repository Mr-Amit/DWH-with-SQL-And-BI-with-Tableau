USE DataWareHouse;
select Authority, Usage as HalfYearlys, SUM(TotalTonnes) TotalTonnes, sum(rn) - 1 Rank -- -1 Because NULL is rank 1
FROM																					
	(select s.Authority, s.Usage, SUM(f.TotalTonnes) TotalTonnes, ROW_NUMBER() OVER (PARTITION BY s.Usage ORDER by sum(f.TotalTonnes) DESC) AS rn
	from (main m inner join facts f 
		ON m.WasteProcessorId = f.WasteProcessorId
			and f.WasteProcessorOutputId = m.WasteProcessorOutputId	
			and  f.MaterialId = m.MaterialId)
		
			INNER JOIN secondary s
				ON s.SenderWasteProcessorOutputId = f.SenderWasteProcessorOutputId
				and s.WasteStreamId = f.WasteStreamId
		--where Authority is not NULL
		-- m.OutputProcessType = 'Dry recyclate' and m.Material is not null and s.Period is not null and s.Usage is not NULL
																										
		group by ROLLUP(s.usage, s.Authority)) as tmp
WHERE rn <= 11 and Usage is not NULL and Authority is not NULL
								
--group by Usage, Period, Material
									
GROUP BY Usage, Authority

-- Below statement would give how every Authority 
-- ORDER BY Authority, Usage, SUM(TotalTonnes) desc;

ORDER BY Usage, SUM(TotalTonnes) desc;
			
	--ORDER BY Usage, period, TotalTonnes desc; 
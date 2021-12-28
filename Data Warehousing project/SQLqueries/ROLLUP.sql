select Usage as HalfYearly, Period as Quarters, Material, SUM(TotalTonnes) TotalTonnes, sum(rn) rn
FROM
	(select m.Material, s.Usage, s.Period, SUM(f.TotalTonnes) TotalTonnes, ROW_NUMBER() OVER (PARTITION BY s.period ORDER by sum(f.TotalTonnes) DESC) AS rn
		from(main m
				INNER JOIN facts f 
					ON m.WasteProcessorId = f.WasteProcessorId
							and f.WasteProcessorOutputId = m.WasteProcessorOutputId	
							and  f.MaterialId = m.MaterialId)
					INNER JOIN secondary s
						ON s.SenderWasteProcessorOutputId = f.SenderWasteProcessorOutputId
							and s.WasteStreamId = f.WasteStreamId
		where m.OutputProcessType = 'Dry recyclate' and m.Material is not null-- and s.Period is not null and s.Usage is not NULL
		group by ROLLUP(s.Usage, s.Period), m.Material) as tmp
		--order by s.Usage, s.Period, sum(f.TotalTonnes) desc) as tmp
WHERE rn <= 5
group by Usage, Period, Material
ORDER BY Usage, period; 

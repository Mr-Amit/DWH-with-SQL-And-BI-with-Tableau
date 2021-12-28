WITH cte AS (
    SELECT Authority,ONSCode,WasteStreamId,SenderWasteProcessorOutputId,
		AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,Usage,QuarterlyComments,
        ROW_NUMBER() OVER (
            PARTITION BY 
                Authority,ONSCode,WasteStreamId,SenderWasteProcessorOutputId,
			AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,Usage,QuarterlyComments
            ORDER BY 
                Authority,ONSCode,WasteStreamId,SenderWasteProcessorOutputId,
			AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,Usage,QuarterlyComments
        ) row_num
     FROM 
        dbo.Stage_secondary
)
DELETE FROM cte
WHERE row_num > 1;
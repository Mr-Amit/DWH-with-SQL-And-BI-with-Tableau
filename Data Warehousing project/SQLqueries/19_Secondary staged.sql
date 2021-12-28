USE DataWareHouse;
INSERT INTO secondary(Authority,ONSCode,WasteStreamId,SenderWasteProcessorOutputId,
			AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,Usage,QuarterlyComments)
SELECT  Authority,ONSCode,WasteStreamId,SenderWasteProcessorOutputId,
			AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,Usage,QuarterlyComments
FROM Stage_secondary;
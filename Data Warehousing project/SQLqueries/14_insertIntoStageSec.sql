USE DataWareHouse;
INSERT INTO Stage_secondary(Authority,ONSCode,WasteStreamId,SenderWasteProcessorOutputId,
			AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,Usage,QuarterlyComments)
SELECT  Authority,ONSCode,WasteStreamId,SenderWasteProcessorOutputId,
			AuthorityId,Period,PeriodId,WasteStreamTypeId,WasteStreamType,Usage,QuarterlyComments
FROM MERGE2015_2017;
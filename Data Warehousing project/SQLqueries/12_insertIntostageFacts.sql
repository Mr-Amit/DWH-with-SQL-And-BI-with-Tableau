USE DataWareHouse;
INSERT INTO Stage_facts(WasteProcessorId , WasteProcessorOutputId, MaterialId, WasteStreamId, SenderWasteProcessorOutputId)
SELECT  WasteProcessorId , WasteProcessorOutputId, MaterialId, WasteStreamId, SenderWasteProcessorOutputId
FROM MERGE2015_2017;

  					
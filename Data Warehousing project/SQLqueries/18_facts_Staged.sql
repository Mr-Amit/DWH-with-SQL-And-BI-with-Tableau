USE DataWareHouse;
INSERT INTO facts(WasteProcessorId , WasteProcessorOutputId, MaterialId, WasteStreamId, SenderWasteProcessorOutputId)
SELECT  WasteProcessorId , WasteProcessorOutputId, MaterialId, WasteStreamId, SenderWasteProcessorOutputId
FROM Stage_facts;
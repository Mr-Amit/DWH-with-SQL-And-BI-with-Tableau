USE DataWareHouse;

CREATE TABLE facts(

	WasteProcessorId  		int,
    WasteProcessorOutputId  	int,
    MaterialId  			varchar(50),
    WasteStreamId  			int,
    SenderWasteProcessorOutputId  	int,
    TotalTonnes  					int,

	CONSTRAINT FK1 FOREIGN KEY (WasteProcessorId,  WasteProcessorOutputId, MaterialId ) REFERENCES dbo.main(WasteProcessorId,  WasteProcessorOutputId, MaterialId ),
	CONSTRAINT FK2 FOREIGN KEY (WasteStreamId, SenderWasteProcessorOutputId) REFERENCES dbo.secondary(WasteStreamId, SenderWasteProcessorOutputId)

	 					  
);											
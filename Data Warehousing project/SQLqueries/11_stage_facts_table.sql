USE DataWareHouse;
CREATE TABLE Stage_facts(
    WasteProcessorId  				int,
    WasteProcessorOutputId  		int,
    MaterialId  					varchar(50),
    WasteStreamId  					int,
    SenderWasteProcessorOutputId  	int,
    TotalTonnes  					int
	);

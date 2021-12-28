UPDATE main
SET TonnesByMaterial = 0
WHERE TonnesByMaterial is NULL;

UPDATE main
SET	  TonnesFromHHSources = 0
WHERE TonnesFromHHSources is NULL;

UPDATE main
SET   TonnesFromNonHHSources = 0
WHERE TonnesFromNonHHSources is NULL;

UPDATE main
SET   TonnesFromWfhSources = 0
WHERE TonnesFromWfhSources is NULL;

UPDATE main
SET   TonnesFromWnfHSources = 0
WHERE TonnesFromWnfHSources is NULL;

UPDATE main
SET   TonnesFromCommercialSources = 0
WHERE TonnesFromCommercialSources is NULL;


UPDATE main
SET   TonnesFromIndustrialSources = 0
WHERE TonnesFromIndustrialSources is NULL;


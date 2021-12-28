USE DataWareHouse;
BULK INSERT data2015_2016
FROM 'D:\Python Scripts\DWH\Q100_data_England_2015_2016.csv'
WITH(
	CODEPAGE='65001',
	FIELDTERMINATOR = ',',
	ROWTERMINATOR = '0x0a',
	FIRSTROW = 2
);
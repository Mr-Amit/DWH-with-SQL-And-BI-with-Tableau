USE DataWareHouse;


UPDATE secondary
SET USAGE = 1
WHERE PeriodId = 235 or PeriodId = 239;

UPDATE secondary
SET USAGE = 2
WHERE PeriodId = 243 or PeriodId = 247;

UPDATE secondary
SET USAGE = 3
WHERE PeriodId = 253 or PeriodId = 257;

UPDATE secondary
SET USAGE = 4
WHERE PeriodId = 261 or PeriodId = 265;


CREATE PROCEDURE adf.trancateMigDb

AS
	TRUNCATE TABLE load.Service;
	TRUNCATE TABLE load.Operator;
	TRUNCATE TABLE load.PassangersCount;
	TRUNCATE TABLE load.Station;
	TRUNCATE TABLE load.Train;
	TRUNCATE TABLE staging.operators_list;
	TRUNCATE TABLE staging.stations_list;
	TRUNCATE TABLE staging.services_list;
	TRUNCATE TABLE staging.passangers_count;
	TRUNCATE TABLE staging.trains_list;
	TRUNCATE TABLE rowmap.operator;
	TRUNCATE TABLE rowmap.station;
	TRUNCATE TABLE rowmap.train;
	TRUNCATE TABLE rowmap.service;

RETURN 0

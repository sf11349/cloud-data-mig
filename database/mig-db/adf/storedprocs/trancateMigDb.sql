CREATE PROCEDURE adf.trancateMigDb

AS
	TRUNCATE TABLE load.Service;
	TRUNCATE TABLE load.Operator;
	TRUNCATE TABLE load.PassangersCount;
	TRUNCATE TABLE load.Station;
	TRUNCATE TABLE load.Train;
	TRUNCATE TABLE extract.operators_list;
	TRUNCATE TABLE extract.stations_list;
	TRUNCATE TABLE extract.services_list;
	TRUNCATE TABLE extract.passangers_count;
	TRUNCATE TABLE extract.trains_list;
	TRUNCATE TABLE rowmap.operator;
	TRUNCATE TABLE rowmap.station;
	TRUNCATE TABLE rowmap.train;
	TRUNCATE TABLE rowmap.service;

RETURN 0

CREATE VIEW transform.station_raw
	AS 
	 SELECT 
	    station_code          AS source_code,
		LEFT(station_code,3) AS target_code,
		TRIM(station_name)    AS station_name,
		station_region
FROM staging.stations_list

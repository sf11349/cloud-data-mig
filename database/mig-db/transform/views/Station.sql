CREATE VIEW transform.Station
 AS
  SELECT
   rm.target_id     AS Id,
   rm.target_code   AS Code,
   stg.station_name AS Name,
   stg.station_region As Region
 FROM rowmap.station rm
  JOIN transform.station_raw stg ON rm.source_code = stg.source_code

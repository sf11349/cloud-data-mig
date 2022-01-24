CREATE VIEW transform.Service
 AS
  SELECT
	rm.target_id     AS Id,
	rm.target_code   AS Code,
	stg.service_name AS Name
 FROM 
	rowmap.service rm
	JOIN transform.service_raw stg ON rm.source_code = stg.source_code

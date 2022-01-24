CREATE VIEW transform.Operator
 AS
  SELECT
	rm.target_id         AS Id,
	rm.target_code       AS Code,
	stg.operator_name    AS Name,
	stg.operator_address AS Address
  FROM 
	rowmap.operator rm
	JOIN transform.operator_raw stg ON rm.source_code = stg.source_code
  

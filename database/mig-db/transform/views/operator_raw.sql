CREATE VIEW transform.operator_raw
	AS 
	 SELECT 
	    operator_code           AS source_code,
		operator_code           AS target_code,
		TRIM(operator_name)     AS operator_name,
		TRIM(operator_address)  AS operator_address
FROM staging.operators_list

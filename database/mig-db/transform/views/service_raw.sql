CREATE VIEW transform.service_raw
	AS 
	 SELECT 
	    service_code            AS source_code,
		service_code            AS target_code,
		service_name
FROM staging.services_list

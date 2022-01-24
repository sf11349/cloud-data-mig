CREATE VIEW transform.Train
 AS
  SELECT
   rm.target_id				AS Id,
   rm.target_code			AS Code,
   stg.train_description	AS Name,
   stg.train_category		AS Category,
   stg.no_carriages			AS NoOfCarriages
 FROM 
	rowmap.train rm
	JOIN transform.train_raw stg ON rm.source_code = stg.source_code

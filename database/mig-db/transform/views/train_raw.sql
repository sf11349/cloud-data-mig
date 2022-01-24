CREATE VIEW transform.train_raw
	AS 
	 SELECT 
	    train_code            AS source_code,
		LEFT(train_code,6)    AS target_code,
		train_category,
        train_description,
        no_carriages
FROM staging.trains_list

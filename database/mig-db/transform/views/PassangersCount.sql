CREATE VIEW transform.PassangersCount
 AS
  SELECT
      op.target_id AS OperatorId,
      st.target_id AS StationId,
      tr.target_id AS TrainId,
      sr.target_id AS ServiceId,
      CAST(REPLACE(CONVERT(VARCHAR(10),ct.count_date,112),'-','') AS INT) AS DateId,
      CAST(REPLACE(CONVERT(VARCHAR(5),ct.count_time,108),':','') AS INT)  AS TimeId,
      ct.passangers_count AS PassangersCount
  FROM 
	staging.passangers_count ct 
	JOIN rowmap.operator op ON ct.operator_code = op.source_code
    JOIN rowmap.service sr ON ct.service_code = sr.source_code
    JOIN rowmap.station st ON ct.station_code = st.source_code
    JOIN rowmap.train tr ON ct.train_code = tr.source_code
  
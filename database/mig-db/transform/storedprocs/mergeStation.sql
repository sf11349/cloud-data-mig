CREATE PROCEDURE transform.mergeStation
  AS 
  SET XACT_ABORT, NOCOUNT ON;
  BEGIN TRY 
    BEGIN TRANSACTION

      -- Merge into Row Map
      MERGE INTO rowmap.station AS TRGT
      USING transform.station_raw AS SRC ON TRGT.source_code = SRC.source_code
      WHEN NOT MATCHED BY TARGET THEN
        INSERT (source_code,target_code)
        VALUES (SRC.source_code,SRC.target_code);

      -- Insert into LOAD
      INSERT INTO load.Station
      SELECT * FROM transform.Station

    COMMIT TRANSACTION

  END TRY
  BEGIN CATCH
    IF(@@TRANCOUNT >0) ROLLBACK TRANSACTION;
    RETURN 55555
  END CATCH;

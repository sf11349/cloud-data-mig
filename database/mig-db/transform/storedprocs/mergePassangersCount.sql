CREATE PROCEDURE transform.mergePassangersCount
  AS 
  SET XACT_ABORT, NOCOUNT ON;
  BEGIN TRY 
    BEGIN TRANSACTION

      -- Insert into LOAD
      INSERT INTO load.PassangersCount 
             (OperatorId,StationId,TrainId,ServiceId,DateId,TimeId,PassangersCount)
      SELECT  OperatorId,StationId,TrainId,ServiceId,DateId,TimeId,PassangersCount  
      FROM transform.PassangersCount

    COMMIT TRANSACTION

  END TRY
  BEGIN CATCH
    IF(@@TRANCOUNT >0) ROLLBACK TRANSACTION;
    RETURN 55555
  END CATCH;
